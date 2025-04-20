import 'dart:convert';

import 'package:awaj/features/main/health_location/health_facility_model.dart';
import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:geolocator/geolocator.dart';
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

class _FindHospitalsPageState extends State<FindHospitalsPage> with TickerProviderStateMixin {
  late final _mapController = AnimatedMapController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOut,
    cancelPreviousAnimations: true,
  );
  List<HealthFacility> _filteredHospitals = [];
  Position? currentPosition;
  LatLng? currentLatLng;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() async {
    setState(() {
      isLoading = true;
    });
    await _getUserLocation();
    setState(() {
      isLoading = false;
    });
    _fetchHospitals();
  }

  Future<LatLng> _getUserLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      currentLatLng = LatLng(27.7211348, 85.3078008);
      return currentLatLng!;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        currentLatLng = LatLng(27.7211348, 85.3078008);
        return currentLatLng!;
      }
    }

    Position position = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(
      accuracy: LocationAccuracy.high,
    ));
    currentLatLng = LatLng(position.latitude, position.longitude);
    return currentLatLng!;
  }

  Future<void> _fetchHospitals() async {
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
          hasActionButton: false,
        )
      ],
      child: isLoading
          ? Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                Positioned.fill(
                  child: FlutterMap(
                    mapController: _mapController.mapController,
                    options: MapOptions(
                      initialCenter: currentLatLng!, // Initial map center (Kathmandu)
                      initialZoom: 18.0,
                      minZoom: 6.0,
                      cameraConstraint: CameraConstraint.contain(
                        bounds: LatLngBounds(
                          LatLng(26.347, 80.058), // Southwest corner
                          LatLng(30.447, 88.201), // Northeast corner
                        ),
                      ),
                      maxZoom: 18.0,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                        // Plenty of other options available!
                      ),
                      MarkerLayer(markers: [
                        Marker(
                          point: currentLatLng!,
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
                Positioned(
                    right: 32,
                    bottom: 32,
                    child: Column(
                      children: [
                        IconButton.secondary(
                          icon: Icon(Icons.location_searching),
                          onPressed: () async {
                            currentLatLng = await _getUserLocation();
                            _mapController.mapController.move(currentLatLng!, 16);
                          },
                        ),
                        Gap(8),
                        IconButton.secondary(
                          icon: Icon(Icons.location_searching),
                          onPressed: () {},
                        ),
                      ],
                    ))
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
