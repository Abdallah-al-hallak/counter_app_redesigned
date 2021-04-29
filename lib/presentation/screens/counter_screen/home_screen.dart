import 'package:counter_app_redesigned/presentation/screens/counter_screen/widgets/animated_circles.dart';
import 'package:counter_app_redesigned/presentation/screens/counter_screen/widgets/counter_value.dart';
import 'package:counter_app_redesigned/presentation/screens/counter_screen/widgets/plasma_background.dart';
import 'package:counter_app_redesigned/presentation/screens/counter_screen/widgets/sliderCounter.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PlasmaBackground(),
          Positioned(
            top: 10.0.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedCircles(),
                CounterValue(),
              ],
            ),
          ),
          Positioned(bottom: 10.0.h, child: Counter()),
        ],
      ),
    );
  }
}
