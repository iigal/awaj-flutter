import 'dart:convert';

import 'package:awaj/features/main/health_location/health_facility_model.dart';
import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

List<Map<String, dynamic>> districts = [
  {"districtid": 1, "provinceid": 1, "nameen": "Taplejung"},
  {"districtid": 2, "provinceid": 1, "nameen": "Panchthar"},
  {"districtid": 3, "provinceid": 1, "nameen": "Ilam"},
  {"districtid": 4, "provinceid": 1, "nameen": "Sankhuwasava"},
  {"districtid": 5, "provinceid": 1, "nameen": "Terhathum"},
  {"districtid": 6, "provinceid": 1, "nameen": "Dhankuta"},
  {"districtid": 7, "provinceid": 1, "nameen": "Bhojpur"},
  {"districtid": 8, "provinceid": 1, "nameen": "Khotang"},
  {"districtid": 9, "provinceid": 1, "nameen": "Solukhumbu"},
  {"districtid": 10, "provinceid": 1, "nameen": "Okhaldhunga"},
  {"districtid": 11, "provinceid": 1, "nameen": "Udayapur"},
  {"districtid": 12, "provinceid": 1, "nameen": "Jhapa"},
  {"districtid": 13, "provinceid": 1, "nameen": "Morang"},
  {"districtid": 14, "provinceid": 1, "nameen": "Sunsari"},
  {"districtid": 15, "provinceid": 2, "nameen": "Saptari"},
  {"districtid": 16, "provinceid": 2, "nameen": "Siraha"},
  {"districtid": 17, "provinceid": 2, "nameen": "Dhanusha"},
  {"districtid": 18, "provinceid": 2, "nameen": "Mahottari"},
  {"districtid": 19, "provinceid": 2, "nameen": "Sarlahi"},
  {"districtid": 20, "provinceid": 2, "nameen": "Rautahat"},
  {"districtid": 21, "provinceid": 2, "nameen": "Bara"},
  {"districtid": 22, "provinceid": 2, "nameen": "Parsa"},
  {"districtid": 23, "provinceid": 3, "nameen": "Dolakha"},
  {"districtid": 24, "provinceid": 3, "nameen": "Ramechhap"},
  {"districtid": 25, "provinceid": 3, "nameen": "Sindhuli"},
  {"districtid": 26, "provinceid": 3, "nameen": "Kavrepalanchowk"},
  {"districtid": 27, "provinceid": 3, "nameen": "Sidhupalchowk"},
  {"districtid": 28, "provinceid": 3, "nameen": "Rasuwa"},
  {"districtid": 29, "provinceid": 3, "nameen": "Nuwakot"},
  {"districtid": 30, "provinceid": 3, "nameen": "Dhading"},
  {"districtid": 31, "provinceid": 3, "nameen": "Chitawan"},
  {"districtid": 32, "provinceid": 3, "nameen": "Makawanpur"},
  {"districtid": 33, "provinceid": 3, "nameen": "Bhaktapur"},
  {"districtid": 34, "provinceid": 3, "nameen": "Lalitpur"},
  {"districtid": 35, "provinceid": 3, "nameen": "Kathmandu"},
  {"districtid": 36, "provinceid": 4, "nameen": "Gorkha"},
  {"districtid": 37, "provinceid": 4, "nameen": "Lamjung"},
  {"districtid": 38, "provinceid": 4, "nameen": "Tanahun"},
  {"districtid": 39, "provinceid": 4, "nameen": "Kaski"},
  {"districtid": 40, "provinceid": 4, "nameen": "Manang"},
  {"districtid": 41, "provinceid": 4, "nameen": "Mustang"},
  {"districtid": 42, "provinceid": 4, "nameen": "Parbat"},
  {"districtid": 43, "provinceid": 4, "nameen": "Syangja"},
  {"districtid": 44, "provinceid": 4, "nameen": "Myagdi"},
  {"districtid": 45, "provinceid": 4, "nameen": "Baglung"},
  {"districtid": 46, "provinceid": 4, "nameen": "Nawalpur"},
  {"districtid": 47, "provinceid": 5, "nameen": "Nawalparasi"},
  {"districtid": 48, "provinceid": 5, "nameen": "Rupandehi"},
  {"districtid": 49, "provinceid": 5, "nameen": "Kapilvastu"},
  {"districtid": 50, "provinceid": 5, "nameen": "Palpa"},
  {"districtid": 51, "provinceid": 5, "nameen": "Arghakhachi"},
  {"districtid": 52, "provinceid": 5, "nameen": "Gulmi"},
  {"districtid": 53, "provinceid": 5, "nameen": "Rukumkot"},
  {"districtid": 54, "provinceid": 5, "nameen": "Rolpa"},
  {"districtid": 55, "provinceid": 5, "nameen": "Pyuthan"},
  {"districtid": 56, "provinceid": 5, "nameen": "Dang"},
  {"districtid": 57, "provinceid": 5, "nameen": "Banke"},
  {"districtid": 58, "provinceid": 5, "nameen": "Bardiya"},
  {"districtid": 59, "provinceid": 6, "nameen": "Rukum"},
  {"districtid": 60, "provinceid": 6, "nameen": "Salyan"},
  {"districtid": 61, "provinceid": 6, "nameen": "Dolpa"},
  {"districtid": 62, "provinceid": 6, "nameen": "Jumla"},
  {"districtid": 63, "provinceid": 6, "nameen": "Mugu"},
  {"districtid": 64, "provinceid": 6, "nameen": "Humla"},
  {"districtid": 65, "provinceid": 6, "nameen": "Kalikot"},
  {"districtid": 66, "provinceid": 6, "nameen": "Jajarkot"},
  {"districtid": 67, "provinceid": 6, "nameen": "Dailekh"},
  {"districtid": 68, "provinceid": 6, "nameen": "Surkhet"},
  {"districtid": 69, "provinceid": 7, "nameen": "Bajura"},
  {"districtid": 70, "provinceid": 7, "nameen": "Bajhang"},
  {"districtid": 71, "provinceid": 7, "nameen": "Doti"},
  {"districtid": 72, "provinceid": 7, "nameen": "Achham"},
  {"districtid": 73, "provinceid": 7, "nameen": "Darchula"},
  {"districtid": 74, "provinceid": 7, "nameen": "Baitadi"},
  {"districtid": 75, "provinceid": 7, "nameen": "Dadeldhura"},
  {"districtid": 76, "provinceid": 7, "nameen": "Kanchanpur"},
  {"districtid": 77, "provinceid": 7, "nameen": "Kailali"}
];

class FindHospitalsPage extends StatefulWidget {
  const FindHospitalsPage({super.key});

  @override
  State<FindHospitalsPage> createState() => _FindHospitalsPageState();
}

class _FindHospitalsPageState extends State<FindHospitalsPage> {
  List<HealthFacility> _filteredHospitals = [];
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
        'Authorization': 'Bearer \$2a\$10\$VArlCZOPPmx2c5FMNbeVDuQ6PPjMb5HRV6h21f04NrD.NSNHCyhDS'
      };
      var data = json.encode({"pageno": 1, "pagesize": 100, "sortby": "", "district": 35});
      Response response = await Dio().request(
        'https://nhfr.mohp.gov.np/api/v1/getHfByDistrict',
        data: data,
        options: Options(
          method: 'POST',
          headers: headers,
        ),
      );

      var responseBody = response.data as List;
      for (int i = 0; i < responseBody.length; i++) {
        hospitals.add(HealthFacility.fromJson(responseBody[i]));
      }
    } catch (err) {
      print(err);
    }
    setState(() {
      _filteredHospitals = hospitals;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBarWidget(
          title: context.tr('Find Hospitals'),
          hasBackButton: true,
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
                        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                        // Plenty of other options available!
                      ),
                      MarkerLayer(markers: [
                        Marker(
                          point: LatLng(
                            27.7172,
                            85.3240,
                          ),
                          child: GestureDetector(
                            child: Icon(
                              Icons.person,
                              color: Colors.blue,
                              size: 30,
                            ),
                            onTap: () {
                              // _showHospitalDetails(hospital);
                            },
                          ),
                        )
                      ]),
                      MarkerLayer(
                        markers: _filteredHospitals.map((hospital) {
                          double latitude = double.tryParse(hospital.coordinates?.latitude ?? "0.0") ?? 0.0;
                          double longitude = double.tryParse(hospital.coordinates?.longitude ?? "0.0") ?? 0.0;
                          return Marker(
                            point: LatLng(
                              latitude,
                              longitude,
                            ),
                            child: GestureDetector(
                              child: Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 30,
                              ),
                              onTap: () {
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

  void _showHospitalDetails(HealthFacility hospital) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          padding: const EdgeInsets.all(16.0),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                hospital.name ?? "",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(context.tr('Address: ${hospital.name}')),
              Text(context.tr('Phone: ${hospital.name}')),
              const SizedBox(height: 16),
              Text(
                'Services:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // Wrap(
              //   spacing: 8.0,
              //   children: hospital.properties!.serviceType.map<Widget>((service) => Chip(label: Text(context.tr(service)))).toList(),
              // ),
            ],
          ),
        );
      },
    );
  }
}
