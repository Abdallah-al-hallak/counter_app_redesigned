import 'package:animate_do/animate_do.dart';
import 'package:counter_app_redesigned/logic/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class CounterValue extends StatefulWidget {
  const CounterValue({
    Key key,
  }) : super(key: key);

  @override
  _CounterValueState createState() => _CounterValueState();
}

class _CounterValueState extends State<CounterValue> {
  AnimationController _animationController;
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animationController?.forward(from: 0.0);
    return ZoomIn(
      duration: Duration(milliseconds: 400),
      controller: (controller) => _animationController = controller,
      manualTrigger: true,
      child: Text(
        context
            .select(
                (CounterCubit counterCubit) => counterCubit.state.counterValue)
            .toString(),
        style: Theme.of(context).textTheme.headline1.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 80.0.sp,
            color: Colors.black),
      ),
    );
  }
}