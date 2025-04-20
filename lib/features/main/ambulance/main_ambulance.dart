import 'package:awaj/features/main/ambulance/ambulance_provider.dart';
import 'package:awaj/features/main/ambulance/ambulance_tracking.dart';
import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:awaj/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

final List<AmbulanceProvider> _nearbyProviders = [
  AmbulanceProvider(
    id: '1',
    name: 'Central Hospital Ambulance',
    distance: '2.3 km',
    rating: 4.8,
    responseTime: '5-8 min',
    available: true,
    location: const LatLng(27.7172, 85.3240), // Kathmandu coordinates
  ),
  AmbulanceProvider(
    id: '2',
    name: 'Nepal Red Cross Society',
    distance: '3.6 km',
    rating: 4.9,
    responseTime: '7-10 min',
    available: true,
    location: const LatLng(27.7100, 85.3100),
  ),
];

class AmbulanceServicePage extends StatefulWidget {
  const AmbulanceServicePage({super.key});

  @override
  State<AmbulanceServicePage> createState() => _AmbulanceServicePageState();
}

class _AmbulanceServicePageState extends State<AmbulanceServicePage> {
  final TextEditingController _locationController = TextEditingController();

  AmbulanceProvider? _dispatchedAmbulance;
  bool _isRequestPending = false;
  bool _isAmbulanceDispatched = false;
  String _arrivalTime = '';
  LatLng? _userLocation;
  LatLng? _ambulanceLocation;

  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }

  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

  Future<void> _getUserLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() {
        _userLocation = LatLng(27.7211348, 85.3078008);
      });

      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        setState(() {
          _userLocation = LatLng(27.7211348, 85.3078008);
        });
        return;
      }
    }

    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      _userLocation = LatLng(position.latitude, position.longitude);
    });
  }

  void _trackAmbulance() {
    if (_dispatchedAmbulance != null) {
      // Mock ambulance movement
      const ambulanceSpeed = 0.0001; // Mock speed
      const interval = Duration(seconds: 2);

      Future.doWhile(() async {
        await Future.delayed(interval);
        if (_ambulanceLocation == null) {
          _ambulanceLocation = _dispatchedAmbulance!.location;
        } else {
          _ambulanceLocation = LatLng(
            _ambulanceLocation!.latitude + ambulanceSpeed,
            _ambulanceLocation!.longitude + ambulanceSpeed,
          );
        }

        setState(() {});

        // Stop tracking when ambulance reaches the user
        final distance = Geolocator.distanceBetween(
          _ambulanceLocation!.latitude,
          _ambulanceLocation!.longitude,
          _userLocation!.latitude,
          _userLocation!.longitude,
        );

        return distance > 100; // Stop when within 100 meters
      });
    }
  }

  void _simulateBackendAcceptance() {
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _isRequestPending = false;
        _isAmbulanceDispatched = true;
        _dispatchedAmbulance = _nearbyProviders.first;
        _arrivalTime = _dispatchedAmbulance!.responseTime;
      });
      _trackAmbulance();
    });
  }

  void _showRequestBottomSheet(AmbulanceProvider provider) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController contactController = TextEditingController();

    openSheet(
      context: context,
      // isScrollControlled: true,
      position: OverlayPosition.bottom,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Request Ambulance',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.gray.shade800,
                ),
              ),
              const Gap(16),
              FormField(
                key: FormKey("name"),
                label: Text(context.tr('Name')),
                child: TextField(
                  controller: nameController,
                  placeholder: Text(context.tr('Enter patient name')),
                ),
              ),
              const Gap(16),
              FormField(
                key: FormKey("contact"),
                label: Text(context.tr('Contact')),
                child: TextField(
                  controller: contactController,
                  placeholder: Text(context.tr('Enter contact number')),
                ),
              ),
              const Gap(16),
              Button.primary(
                onPressed: () {
                  setState(() {
                    _isRequestPending = true;
                  });
                  _simulateBackendAcceptance();
                  closeSheet(context);
                },
                child: Text(context.tr('Request Ambulance')),
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBarWidget(
          hasBackButton: true,
          hasActionButton: false,
          title: LocaleKeys.ambulance_ambulanceService,
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildEmergencyCard(),
              const Gap(16),
              if (_isRequestPending) ...[
                Text(
                  'Active Ambulance Dispatch',
                ).bold().large(),
                const Gap(8),
                _buildRequestPendingCard(),
                const Gap(16),
              ],
              if (_isAmbulanceDispatched) ...[
                Text(
                  'Active Ambulance Dispatch',
                ).bold().large(),
                const Gap(8),
                _buildActiveServiceCard(),
                const Gap(16),
              ],
              _buildLocationInput(),
              const Gap(32),
              Text(
                'Nearby Ambulance Providers',
              ).bold().large(),
              const Gap(16),
              ..._nearbyProviders.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: _buildProviderCard(e),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRequestPendingCard() {
    return Card(
      filled: true,
      fillColor: Colors.yellow.shade50,
      borderColor: Colors.yellow.shade200,
      child: Row(
        children: [
          const Icon(Icons.access_time, color: Colors.orange),
          const Gap(12),
          Expanded(
            child: Text(
              'Request Pending...',
              style: TextStyle(
                color: Colors.gray.shade800,
              ),
            ).bold().medium(),
          ),
        ],
      ),
    );
  }

  Widget _buildActiveServiceCard() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AmbulanceTrackingPage(
              userLocation: _userLocation!,
              ambulanceLocation: _ambulanceLocation!,
              ambulanceName: _dispatchedAmbulance!.name,
              arrivalTime: _arrivalTime,
            ),
          ),
        );
      },
      child: Card(
        filled: true,
        fillColor: Colors.blue.shade50,
        borderColor: Colors.blue.shade200,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.local_hospital, color: Colors.red),
            const Gap(12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Active Service: ${_dispatchedAmbulance!.name}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(4),
                  Text(
                    'Arriving in $_arrivalTime',
                    style: TextStyle(
                      color: Colors.gray.shade600,
                    ),
                  ).small(),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.gray),
          ],
        ),
      ),
    );
  }

  Widget _buildEmergencyCard() {
    return Card(
      filled: true,
      fillColor: Colors.red.shade50,
      borderColor: Colors.red.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(
                Icons.emergency,
                color: Colors.red.shade700,
              ),
              const Gap(8),
              Text(context.tr(LocaleKeys.ambulance_emergencyAmbulance),
                  style: TextStyle(
                    color: Colors.red.shade700,
                  )).bold(),
            ],
          ),
          const Gap(8),
          Text(
            context.tr(LocaleKeys.ambulance_emergencyAmbulanceMessage),
            style: TextStyle(
              color: Colors.black,
            ),
          ).small(),
          const Gap(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Button.destructive(
                  alignment: Alignment.center,
                  onPressed: () async {
                    // _showEmergencyCallDialog();
                    final Uri launchUri = Uri(
                      scheme: 'tel',
                      path: "102",
                    );
                    await launchUrl(launchUri);
                  },
                  leading: const Icon(Icons.call),
                  child: Text(context.tr('Call 102')),
                ),
              ),
              Gap(8),
              Expanded(
                child: Button.primary(
                  alignment: Alignment.center,
                  onPressed: () {
                    _showEmergencyGuidelines();
                  },
                  leading: const Icon(Icons.info_outline),
                  child: Text(context.tr('Guidelines')),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLocationInput() {
    return FormField(
      key: FormKey("location"),
      label: Text(context.tr(LocaleKeys.yourLocation)).bold().large(),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _locationController,
              placeholder: Text(context.tr('Enter your current location')),
            ),
          ),
          const Gap(12),
          Button.outline(
            onPressed: () {
              _getUserLocation();
              if (_userLocation != null) {
                _locationController.text = 'Lat: ${_userLocation!.latitude}, Lng: ${_userLocation!.longitude}';
              }
            },
            child: Icon(
              Icons.my_location,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProviderCard(AmbulanceProvider provider) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.local_hospital,
                color: Theme.of(context).colorScheme.primary,
              ),
              const Gap(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      provider.name,
                    ).bold().medium(),
                    const Gap(4),
                    Text(
                      '${provider.distance} • ${provider.responseTime}',
                      style: TextStyle(
                        color: Colors.gray.shade600,
                      ),
                    ).small(),
                  ],
                ),
              ),
              Chip(
                style: ButtonStyle.secondary(),
                child: Text(
                  provider.available ? 'Available' : 'Busy',
                  style: TextStyle(
                    color: provider.available ? Colors.green : Colors.red,
                  ),
                ),
              ),
            ],
          ),
          const Gap(16),
          Button.secondary(
            onPressed: provider.available
                ? () {
                    _showRequestBottomSheet(provider);
                  }
                : null,
            child: Text(context.tr('Request Ambulance')),
          ),
        ],
      ),
    );
  }

  void _showEmergencyGuidelines() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(context.tr('Emergency Guidelines')),
          content: Text(
            '1. Stay calm and assess the situation.\n'
            '2. Call emergency services immediately.\n'
            '3. Provide clear information about the location and situation.\n'
            '4. Follow instructions from the dispatcher.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(context.tr('Close')),
            ),
          ],
        );
      },
    );
  }
}
