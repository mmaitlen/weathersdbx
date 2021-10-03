import 'package:weathersdbx/data/data_model.dart' as data;

/// 
/// Central architecture component which is the go-between 
/// the UI and the supporting app components and business logic.
/// 
class AppMgr {
  late StorageMgr _storageMgr;

  initAppMgr({required StorageMgr storageMgr}) {
    _storageMgr = storageMgr;
  }

  setCurrentLocationStationId(String stationId) => _storageMgr.setStationId(stationId);

  Future<data.CurrentObservation?> fetchCurrentObservation() async {
    return await Future.value(data.CurrentObservation(
      stationId: _storageMgr.stationId,
      name: "AnyTown",
      temperatureDegC: 24,
    ));
  }
}

///
/// App component responsible for storing and retrieving data.
/// 
class StorageMgr {
  late String _stationId;

  String get stationId => _stationId;

  setStationId(String stationId) => _stationId = stationId; 
}
