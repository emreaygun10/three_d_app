import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

class AnimationObject extends StatelessWidget {
  final String src;
  final String animationName;
  final bool autoPlay;
  final O3DController controller;

  const AnimationObject({
    super.key,
    required this.src,
    required this.animationName,
    required this.autoPlay,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return O3D.asset(
      src: src,
      controller: controller,
      ar: false,
      autoPlay: autoPlay,
      autoRotateDelay: 0,
      animationName: animationName,
      cameraTarget: CameraTarget(0, 1, 1),
      cameraOrbit: CameraOrbit(0, 90, 0),
      loading: Loading.eager,
    );
  }
}
