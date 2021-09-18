import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weathersdbx/data/data_model.dart' as data;

import 'app/app_model.dart';

final appModel = AppModel();

void main() {
  runApp(const WeatherSdbxApp());
}

class WeatherSdbxApp extends StatelessWidget {
  const WeatherSdbxApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeatherSdbx',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'WeatherSdbx'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late http.Client _httpClient;

  @override
  void initState() {
    _httpClient = http.Client();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _fetchData() async {
      String lat = "47.2528768";
      String lon = "-122.4442906";
      //String uri = "https://api.weather.gov/points/$lat,$lon";
      String stationLatest =
          "https://api.weather.gov/stations/KTIW/observations/latest";
      String uri =
          stationLatest; // "https://api.weather.gov/gridpoints/SEW/117,51/forecast";
      final headers = {"User-Agent": "(questinginc.com, questingin@gmail.com)"};
      http.Response response =
          await _httpClient.get(Uri.parse(uri), headers: headers);
      print("response ${jsonEncode(response.statusCode)}");
      Map<String, dynamic> data = jsonDecode(response.body);
      for (var key in data.keys) {
        print("data ${data[key]}\n");
      }
    }

    Widget _constructData(data.CurrentObservation obsdata) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(obsdata.name),
          Text("Temp: ${obsdata.temperatureDegC}"),
          OutlinedButton(onPressed: _fetchData, child: const Text("Refresh"))
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder<data.CurrentObservation>(
            future: appModel.fetchCurrentObservation("stationid"),
            builder: (context, AsyncSnapshot<data.CurrentObservation> snapshot) {
              return snapshot.hasData && snapshot.data != null
                  ? _constructData(snapshot.data!)
                  : const Text("loading");
            }),
      ),
    );
  }
}
