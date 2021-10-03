import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:weathersdbx/ui/home_screen.dart';

import 'app/app_mgr.dart';

void main() {
  // configure central architectural component
  final appMgr = AppMgr();
  appMgr.initAppMgr(storageMgr: StorageMgr());

  // hard code station for the time being
  appMgr.setCurrentLocationStationId("tbd");
  runApp(WeatherSdbxApp(appMgr));
}

const appTitle = "WeatherSdbx";

class WeatherSdbxApp extends StatelessWidget {
  final AppMgr _appMgr;
  const WeatherSdbxApp(this._appMgr, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: _appMgr),
      ],
      child: MaterialApp(
        title: appTitle,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(title: appTitle),
      ),
    );
  }
}