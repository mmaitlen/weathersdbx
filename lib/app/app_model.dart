import 'package:weathersdbx/data/data_model.dart' as data;

class AppModel {

  Future<data.CurrentObservation> fetchCurrentObservation(String stationId) async {
    return Future.value(data.CurrentObservation(
      stationId: stationId,
      name: "AnotherTown",
      temperatureDegC: 25.0,
    ));
  }
}