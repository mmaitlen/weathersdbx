import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:weathersdbx/app/app_mgr.dart';
import 'package:weathersdbx/data/data_model.dart' as data;
import 'package:weathersdbx/ui/ui_const.dart';

class CurrentObsWidget extends StatelessWidget {
  const CurrentObsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _constructContent(data.CurrentObservation obs) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              obs.name,
              style: TextStyle(fontSize: 24, color: colorDeepBlue.opacity50),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  obs.temperatureDegC.toString(),
                  style: const TextStyle(fontSize: 36, color: colorDeepBlue),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text(
                    "\u2103",
                    style: TextStyle(fontSize: 16, color: colorDeepBlue),
                  ),
                ),
              ],
            ),
          ],
        );

    return FutureBuilder<data.CurrentObservation?>(
        future: context.read<AppMgr>().fetchCurrentObservation(),
        builder: (context, AsyncSnapshot<data.CurrentObservation?> snapshot) {
          return snapshot.hasData && snapshot.data != null
              ? _constructContent(snapshot.data!)
              : const Text("loading");
        });
  }
}
