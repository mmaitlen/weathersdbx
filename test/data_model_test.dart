import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:weathersdbx/data/data_model.dart' as data;
import 'package:weathersdbx/dev/test_content.dart';

main() {
  test("Parse latest observable data into data obj", () {
    data.StationInfo stationInfo =
        data.StationInfo.fromJson(jsonDecode(stationInfoKTIW));
    expect(stationInfo.stationId, 'KTIW');
    expect(stationInfo.name, 'Tacoma, Tacoma Narrows Airport');
  });
}
