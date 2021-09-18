import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late http.Client _httpClient;

  @override
  void initState() {
    _httpClient = http.Client();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _fetchData() async {
      String lat="47.2528768";
      String lon="-122.4442906";
      //String uri = "https://api.weather.gov/points/$lat,$lon";
      String stationLatest = "https://api.weather.gov/stations/KTIW/observations/latest";
      String uri = stationLatest; // "https://api.weather.gov/gridpoints/SEW/117,51/forecast";
      final headers ={"User-Agent": "(questinginc.com, questingin@gmail.com)"};
      http.Response response = await _httpClient.get(Uri.parse(uri), headers: headers);
      print("response ${jsonEncode( response.statusCode)}");
      Map<String,dynamic> data = jsonDecode(response.body);
      data.keys.forEach((key) {
print("data ${data[key]}\n");
      });
      
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
                onPressed: _fetchData, child: const Text("Fetch Data"))
          ],
        ),
      ),
    );
  }
}
