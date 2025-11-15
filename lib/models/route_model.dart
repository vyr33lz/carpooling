import 'package:hive/hive.dart';
import 'package:latlong2/latlong.dart';
// ignore: unused_import
import 'latlng_adapter.dart';

part 'route_model.g.dart';

@HiveType(typeId: 0)
class RouteModel extends HiveObject {
  @HiveField(0)
  LatLng start;

  @HiveField(1)
  LatLng end;

  @HiveField(2)
  DateTime date;

  @HiveField(3)
  int seats;

  @HiveField(4)
  List<LatLng> routePoints;

  @HiveField(5)
  int bookedSeats;

  RouteModel({
    required this.start,
    required this.end,
    required this.date,
    required this.seats,
    required this.routePoints,
    this.bookedSeats = 0,
  });
}
