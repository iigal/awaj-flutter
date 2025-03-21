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

class AmbulanceServicePage2 extends StatefulWidget {
  const AmbulanceServicePage2({super.key});

  @override
  State<AmbulanceServicePage2> createState() => _AmbulanceServicePage2State();
}

class _AmbulanceServicePage2State extends State<AmbulanceServicePage2> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      headers: [
        AppBar(
          title: const Text('Ambulance Service'),
          trailing: [
            Button.text(
              leading: const Icon(Icons.history),
              onPressed: () {
                // Navigate to ambulance request history
              },
              child: Text('Request History'),
            ),
          ],
        )
      ],
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildEmergencyCard(),
              const Gap(12),
              if (_isRequestPending) ...[
                _buildRequestPendingCard(),
                const Gap(12),
              ],
              if (_isAmbulanceDispatched) ...[
                _buildActiveServiceCard(),
                const Gap(12),
              ],
              _buildLocationInput(),
              const Gap(12),
              Text(
                'Nearby Ambulance Providers',
                style: TextStyle(
                  color: const Color(0xFF253858),
                ),
              ).bold().medium(),
              const Gap(16),
              ..._nearbyProviders.map(
                (e) => _buildProviderCard(e),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRequestPendingCard() {
    return Card(
      // margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Icon(Icons.access_time, color: Colors.orange),
            const SizedBox(width: 12),
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
        // margin: const EdgeInsets.only(bottom: 16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              const Icon(Icons.local_hospital, color: Colors.red),
              const SizedBox(width: 12),
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
                    const SizedBox(height: 4),
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
      ),
    );
  }

  Widget _buildEmergencyCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.red.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.emergency,
                color: Colors.red.shade700,
                size: 24,
              ),
              const SizedBox(width: 8),
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
          const SizedBox(height: 12),
          const Text(
            'For life-threatening emergencies, call directly:',
            style: TextStyle(
              color: Colors.black,
            ),
          ).small(),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Button.text(
                  onPressed: () {
                    setState(() {});
                    _showEmergencyCallDialog();
                  },
                  leading: const Icon(Icons.call),
                  child: const Text('Call 102'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Button.outline(
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: FormField(
                key: FormKey("key"),
                leadingLabel: const Icon(Icons.location_on_outlined),
                label: Text(
                  'Your Location',
                  style: TextStyle(
                    color: const Color(0xFF253858),
                  ),
                ).bold(),
                child: TextField(
                  placeholder: Text('Enter your current location'),
                ),
              ),
            ),
            const SizedBox(width: 12),
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
      ],
    );
  }

  Widget _buildProviderCard(AmbulanceProvider provider) {
    return Card(
      // margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.local_hospital,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        provider.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
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
                  style: provider.available ? ButtonStyle.primary() : ButtonStyle.destructive(),
                  child: Text(
                    provider.available ? 'Available' : 'Busy',
                    style: TextStyle(
                      color: provider.available ? Colors.green : Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Button.text(
              onPressed: provider.available
                  ? () {
                      setState(() {
                        _isRequestPending = true;
                      });
                      _simulateBackendAcceptance();
                    }
                  : null,
              child: const Text('Request Ambulance'),
            ),
          ],
        ),
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
                const SizedBox(height: 8),
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
