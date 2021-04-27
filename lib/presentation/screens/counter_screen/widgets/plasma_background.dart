import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import '../../../../core/themes/app_themes.dart';

class PlasmaBackground extends StatelessWidget {
  const PlasmaBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        backgroundBlendMode: BlendMode.srcOver,
      ),
      child: PlasmaRenderer(
        type: PlasmaType.bubbles,
        particles: 38,
        color: Theme.of(context).particlesColor,
        blur: 0.42,
        size: 0.11,
        speed: 0.64,
        offset: 0,
        blendMode: BlendMode.plus,
        particleType: ParticleType.atlas,
        variation1: 0,
        variation2: 0,
        variation3: 0,
        rotation: 0,
        child: PlasmaRenderer(
          type: PlasmaType.bubbles,
          particles: 38,
          color: Theme.of(context).particlesColor,
          blur: 0.42,
          size: 0.11,
          speed: 0.64,
          offset: 0,
          blendMode: BlendMode.plus,
          particleType: ParticleType.atlas,
          variation1: 0,
          variation2: 0,
          variation3: 0,
          rotation: 0,
        ),
      ),
    );
  }
}
