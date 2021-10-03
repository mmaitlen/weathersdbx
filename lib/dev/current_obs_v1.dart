import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CurrentObsV1 extends StatefulWidget {
  const CurrentObsV1({Key? key}) : super(key: key);

  @override
  State<CurrentObsV1> createState() => _CurrentObsV1State();
}

class _CurrentObsV1State extends State<CurrentObsV1> {
  late http.Client _httpClient;
  String? _temp;

  @override
  void initState() {
    _httpClient = http.Client();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _fetchData() async {
      String stationLatest =
          "https://api.weather.gov/stations/KTIW/observations/latest";
      String uri = stationLatest;
      final headers = {"User-Agent": "(questinginc.com, questingin@gmail.com)"};
      http.Response response =
          await _httpClient.get(Uri.parse(uri), headers: headers);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        setState(() {
          _temp = data['properties']['temperature']['value'].toString();
        });
      } else {
        setState(() {
          _temp = "Error";
        });
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text("AnyTown"),
        Container(height: 8,),
        Text("Temp (C): ${_temp ?? ''}", style: const TextStyle(fontSize: 18),),
        Container(height: 8,),
        OutlinedButton(onPressed: _fetchData, child: const Text("Refresh"))
      ],
    );
  }
}
