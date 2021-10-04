import 'package:flutter/material.dart';
import 'package:weathersdbx/ui/current_obs_widget.dart';
import 'package:weathersdbx/ui/menu.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          MenuWidget()
        ],
      ),
      body: const Center(child: CurrentObsWidget()),
    );
  }
}


