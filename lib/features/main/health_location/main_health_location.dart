import 'dart:convert';

import 'package:awaj/features/main/health_location/health_facility_model.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class FindHospitalsPage extends StatefulWidget {
  const FindHospitalsPage({super.key});

  @override
  State<FindHospitalsPage> createState() => _FindHospitalsPageState();
}

class _FindHospitalsPageState extends State<FindHospitalsPage> {
  final TextEditingController _searchController = TextEditingController();
  List<HealthFacility> _hospitals = [];
  List<HealthFacility> _filteredHospitals = [];
  String _selectedFilter = 'All';
  final MapController _mapController = MapController();

  @override
  void initState() {
    super.initState();
    _fetchHospitals();
  }

  Future<void> _fetchHospitals() async {
    // Mock API call to fetch hospitals
    List<HealthFacility> hospitals = [];
    try {
      var headers = {
        'Content-Type': 'application/json',
        'Authorization': '\$2a\$10\$VArlCZOPPmx2c5FMNbeVDuQ6PPjMb5HRV6h21f04NrD.NSNHCyhDS'
      };
      var data = json.encode({"pageno": 1, "pagesize": 10, "sortby": ""});
      Response response = await Dio().request(
        'https://nhfr.mohp.gov.np/api/v1/getHf',
        data: data,
        options: Options(
          method: 'POST',
          headers: headers,
        ),
      );

      var responseBody = response.data as List;
      print(responseBody);
      for (int i = 0; i < responseBody.length; i++) {
        hospitals.add(HealthFacility.fromJson(responseBody[i]));
      }
    } catch (err) {
      print(err);
    }
    setState(() {
      _hospitals = hospitals;
      _filteredHospitals = hospitals;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBar(
          title: Text(context.tr('Find Hospitals')),
        )
      ],
      child: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: TextField(
          //     controller: _searchController,
          //     decoration: InputDecoration(
          //       hintText: 'Search hospitals...',
          //       prefixIcon: const Icon(Icons.search),
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(8.0),
          //       ),
          //     ),
          //     onChanged: _onSearch,
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
          //   child: DropdownButtonFormField<String>(
          //     value: _selectedFilter,
          //     items: ['All', 'Hospital', 'Clinic', 'Lab', 'Health Post'].map((String value) {
          //       return DropdownMenuItem<String>(
          //         value: value,
          //         child: Text(context.tr(value)),
          //       );
          //     }).toList(),
          //     onChanged: _onFilterChanged,
          //     decoration: InputDecoration(
          //       labelText: 'Filter by type',
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(8.0),
          //       ),
          //     ),
          //   ),
          // ),
          Expanded(
            child: _filteredHospitals.isEmpty
                ? Center(child: Text(context.tr('No hospitals found')))
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
                              double.parse(hospital.coordinates!.latitude ?? "0.0"),
                              double.parse(hospital.coordinates!.longitude ?? "0.0"),
                            ),
                            child: IconButton.ghost(
                              icon: Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 30,
                              ),
                              onPressed: () {
                                // _showHospitalDetails(hospital);
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

  // void _showHospitalDetails(HealthFacility hospital) {
  //   show(
  //     context: context,
  //     builder: (context) {
  //       return Container(
  //         padding: const EdgeInsets.all(16.0),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text(
  //               hospital.hfName ?? "",
  //               style: const TextStyle(
  //                 fontSize: 20,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             const SizedBox(height: 8),
  //             Text(context.tr('Address: ${hospital.contactPerson}')),
  //             Text(context.tr('Phone: ${hospital.contactPersonMobile}')),
  //             const SizedBox(height: 16),
  //             Text(
  //               'Services:',
  //               style: TextStyle(fontWeight: FontWeight.bold),
  //             ),
  //             Wrap(
  //               spacing: 8.0,
  //               children: hospital.services.map<Widget>((service) => Chip(label: Text(context.tr(service)))).toList(),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
}
