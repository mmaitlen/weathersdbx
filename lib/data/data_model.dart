import 'package:weathersdbx/app/api_const.dart' as api;

class StationInfo {
  final String stationId;
  final String name;
  final double lat;
  final double lng;

  StationInfo({
    required this.stationId,
    required this.name,
    required this.lat,
    required this.lng,
  });

  factory StationInfo.fromJson(Map<String,dynamic> jsonMap) {
    return StationInfo(
      stationId: jsonMap[api.atrbProperties][api.atrbStationId],
      name: jsonMap[api.atrbProperties][api.atrbName],
      lat: 1.0,
      lng: 2.0,
    );
  }
}

class CurrentObservation {
  final String stationId;
  final String name;
  final double temperatureDegC;

  CurrentObservation({
    required this.stationId,
    required this.name,
    required this.temperatureDegC,
  });
}


