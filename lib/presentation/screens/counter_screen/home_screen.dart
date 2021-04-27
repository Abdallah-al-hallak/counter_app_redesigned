import 'package:counter_app_redesigned/presentation/screens/counter_screen/widgets/plasma_background.dart';
import 'package:counter_app_redesigned/presentation/screens/counter_screen/widgets/sliderCounter.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: Alignment.center, children: [
      PlasmaBackground(),
      Positioned(bottom: 48, child: Counter()),
      Positioned(
        top: 48,
        child: Container(
          width: 300,
          height: 300,
          child: FlareActor(
            'assets/flares/Loading.flr',
            animation: 'Alarm',
          ),
        ),
      )
    ]));
  }
}
