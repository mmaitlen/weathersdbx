import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:weathersdbx/app/app_mgr.dart';
import 'package:weathersdbx/data/data_model.dart';

import 'package:weathersdbx/main.dart';
import 'package:weathersdbx/ui/current_obs_widget.dart';

import 'utilies.dart';
import 'widget_test.mocks.dart';

// class MockAppMgr extends Mock implements AppMgr
// {
//   @override
//   Future<CurrentObservation> fetchCurrentObservation() =>
//       super.noSuchMethod(Invocation.getter(#fetchCurrentObservation),
//           returnValue: Future.value(CurrentObservation(
//             name: '',
//             stationId: '',
//             temperatureDegC: 111,
//           )));
// }

@GenerateMocks([AppMgr])
void main() {
  testWidgets('Ensure expected temp is displayed', (WidgetTester tester) async {
    final appMgr = MockAppMgr();

    when(appMgr.fetchCurrentObservation())
        .thenAnswer((_) => Future.value(CurrentObservation(
              name: "sometown",
              stationId: "anid",
              temperatureDegC: 333.0,
            )));

    await tester.pumpWidget(constructMaterialApp(
      Provider<AppMgr>.value(
        value: appMgr,
        builder: (context, _) {
          return const CurrentObsWidget();
        },
      ),
    ));

    await tester.pumpAndSettle();
    expect(find.text("333.0"), findsOneWidget);
  });
}
