import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

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
          leading: [
            IconButton.outline(
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () {
                context.go("/main/menu/ambulance");
              },
            ),
          ],
          title: Text(context.tr('Tracking')).extraBold().xLarge(),
          trailing: [
            IconButton.ghost(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                // Navigate to ambulance request history
              },
            ),
          ],
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
