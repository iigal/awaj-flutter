import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class FindHospitalsPage extends StatefulWidget {
  const FindHospitalsPage({super.key});

  @override
  State<FindHospitalsPage> createState() => _FindHospitalsPageState();
}

class _FindHospitalsPageState extends State<FindHospitalsPage> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _hospitals = [];
  List<Map<String, dynamic>> _filteredHospitals = [];
  String _selectedFilter = 'All';
  final MapController _mapController = MapController();

  @override
  void initState() {
    super.initState();
    _fetchHospitals();
  }

  Future<void> _fetchHospitals() async {
    // Mock API call to fetch hospitals
    final response = await Future.delayed(
      const Duration(seconds: 2),
      () => [
        {
          'id': '1',
          'name': 'Central Hospital',
          'type': 'Hospital',
          'latitude': 27.7172,
          'longitude': 85.3240,
          'address': 'Kathmandu, Nepal',
          'phone': '+977-1-1234567',
          'services': ['Emergency', 'Surgery', 'Pharmacy'],
        },
        {
          'id': '2',
          'name': 'City Clinic',
          'type': 'Clinic',
          'latitude': 27.7100,
          'longitude': 85.3200,
          'address': 'Lalitpur, Nepal',
          'phone': '+977-1-7654321',
          'services': ['General Checkup', 'Vaccination'],
        },
        // Add more mock data as needed
      ],
    );

    setState(() {
      _hospitals = response;
      _filteredHospitals = response;
    });
  }

  void _onSearch(String query) {
    setState(() {
      _filteredHospitals = _hospitals.where((hospital) => hospital['name'].toLowerCase().contains(query.toLowerCase())).toList();
    });
  }

  void _onFilterChanged(String? value) {
    setState(() {
      _selectedFilter = value ?? 'All';
      _filteredHospitals = _hospitals.where((hospital) => _selectedFilter == 'All' || hospital['type'] == _selectedFilter).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Hospitals'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search hospitals...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: _onSearch,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DropdownButtonFormField<String>(
              value: _selectedFilter,
              items: ['All', 'Hospital', 'Clinic', 'Lab', 'Health Post'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: _onFilterChanged,
              decoration: InputDecoration(
                labelText: 'Filter by type',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: _filteredHospitals.isEmpty
                ? const Center(child: Text('No hospitals found'))
                : FlutterMap(
                    mapController: _mapController,
                    options: MapOptions(
                      initialCenter: LatLng(27.7172, 85.3240), // Initial map center (Kathmandu)
                      initialZoom: 13.0, // Initial zoom level
                    ),
                    children: [
                      TileLayer(
                        urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                        subdomains: ['a', 'b', 'c'],
                      ),
                      MarkerLayer(
                        markers: _filteredHospitals.map((hospital) {
                          return Marker(
                            point: LatLng(
                              hospital['latitude'],
                              hospital['longitude'],
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 30,
                              ),
                              onPressed: () {
                                _showHospitalDetails(hospital);
                              },
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  void _showHospitalDetails(Map<String, dynamic> hospital) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                hospital['name'],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text('Type: ${hospital['type']}'),
              Text('Address: ${hospital['address']}'),
              Text('Phone: ${hospital['phone']}'),
              const SizedBox(height: 16),
              const Text(
                'Services:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Wrap(
                spacing: 8.0,
                children: hospital['services'].map<Widget>((service) => Chip(label: Text(service))).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
