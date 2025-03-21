import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

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
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
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
              const SizedBox(height: 16),
              FormField(
                key: FormKey("name"),
                label: const Text('Name'),
                child: TextField(
                  controller: nameController,
                  placeholder: const Text('Enter patient name'),
                ),
              ),
              const SizedBox(height: 16),
              FormField(
                key: FormKey("contact"),
                label: const Text('Contact'),
                child: TextField(
                  controller: contactController,
                  placeholder: const Text('Enter contact number'),
                ),
              ),
              const SizedBox(height: 16),
              Button.primary(
                onPressed: () {
                  setState(() {
                    _isRequestPending = true;
                  });
                  _simulateBackendAcceptance();
                  closeSheet(context);
                },
                child: const Text('Request Ambulance'),
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
      backgroundColor: Theme.of(context).colorScheme.background,
      headers: [
        AppBar(
          leading: [
            IconButton.outline(
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () {
                context.go("/main/menu");
              },
            ),
          ],
          title: const Text('Ambulance Service').extraBold().xLarge(),
          trailing: [
            IconButton.ghost(
              icon: const Icon(Icons.history),
              onPressed: () {
                // Navigate to ambulance request history
              },
            ),
          ],
        )
      ],
      child: SafeArea(
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
                size: 24,
              ),
              const Gap(8),
              Text(
                'Emergency Ambulance',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade700,
                ),
              ),
            ],
          ),
          const Gap(8),
          const Text(
            'For life-threatening emergencies, call directly:',
            style: TextStyle(
              color: Colors.black,
            ),
          ).small(),
          const Gap(12),
          Row(
            children: [
              Expanded(
                child: Button.destructive(
                  alignment: Alignment.center,
                  onPressed: () {
                    setState(() {});
                    _showEmergencyCallDialog();
                  },
                  leading: const Icon(Icons.call),
                  child: const Text('Call 102'),
                ),
              ),
              Gap(18),
              Expanded(
                child: Button.primary(
                  alignment: Alignment.center,
                  onPressed: () {
                    _showEmergencyGuidelines();
                  },
                  leading: const Icon(Icons.info_outline),
                  child: const Text('Guidelines'),
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
      label: const Text('Your Location').bold().large(),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _locationController,
              placeholder: const Text('Enter your current location'),
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
            child: const Text('Request Ambulance'),
          ),
        ],
      ),
    );
  }

  void _showEmergencyCallDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Emergency Call'),
          content: const Text('Calling emergency number 102...'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _showEmergencyGuidelines() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Emergency Guidelines'),
          content: const Text(
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
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

class AmbulanceTrackingPage extends StatelessWidget {
  final LatLng userLocation;
  final LatLng ambulanceLocation;
  final String ambulanceName;
  final String arrivalTime;

  const AmbulanceTrackingPage({
    super.key,
    required this.userLocation,
    required this.ambulanceLocation,
    required this.ambulanceName,
    required this.arrivalTime,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBar(
          title: const Text('Track Ambulance'),
        )
      ],
      child: Column(
        children: [
          Expanded(
            child: FlutterMap(
              options: MapOptions(
                initialCenter: userLocation,
                initialZoom: 15.0,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: const ['a', 'b', 'c'],
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      point: userLocation,
                      child: const Icon(
                        Icons.location_pin,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ),
                    Marker(
                      point: ambulanceLocation,
                      child: const Icon(
                        Icons.local_hospital,
                        color: Colors.red,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ambulance: $ambulanceName',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(8),
                Text(
                  'Arriving in $arrivalTime',
                  style: TextStyle(
                    color: Colors.gray.shade700,
                  ),
                ).medium(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AmbulanceProvider {
  final String id;
  final String name;
  final String distance;
  final double rating;
  final String responseTime;
  final bool available;
  final LatLng location;

  AmbulanceProvider({
    required this.id,
    required this.name,
    required this.distance,
    required this.rating,
    required this.responseTime,
    required this.available,
    required this.location,
  });
}
