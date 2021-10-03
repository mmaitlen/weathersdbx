import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class TmpWidget extends StatelessWidget {
  const TmpWidget({Key? key}) : super(key: key);
  final title = "someitme";
  _fetchData() {}
  @override
  Widget build(BuildContext context) {
    String _locationName = "AnyTown";
    double _temp = 20.0;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_locationName),
            Text("Temp: $_temp"),
            OutlinedButton(onPressed: _fetchData, child: const Text("Refresh"))
          ],
        ),
      ),
    );
  }
}

