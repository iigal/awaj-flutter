import 'package:latlong2/latlong.dart';

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
