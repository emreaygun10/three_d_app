import 'dart:async';

import 'package:flutter/material.dart';
import 'package:three_d_app/feature/home/char_detail_view.dart';
import 'package:o3d/o3d.dart';

mixin CharDetailMixin on State<CharDetailView> {
  //to control the animation
  O3DController controller = O3DController();
  late String animation;
  late bool cameraControls;
  late bool autoRotate;
  late bool autoPlay;
  List<String> availableAnimations = [];
  List<String> logs = [];

  @override
  void initState() {
    animation = "";
    cameraControls = false;
    autoRotate = false;
    autoPlay = true;
    controller.logger = (data) {
      logs.add(data.toString());
    };
    Timer(const Duration(seconds: 3), () {
      getAnimations();
    });
    super.initState();
  }

  void turnRight() {
    {
      controller.cameraOrbit(-90, 75, 70);
      controller.cameraTarget(-1, 1, 0);
    }
  }

  void center() {
    controller.cameraOrbit(0, 75, 70);
    controller.cameraTarget(0, 0.87, 0);
  }

  void turnLeft() {
    controller.cameraOrbit(90, 75, 70);
    controller.cameraTarget(1, 1, 0);
  }

  void changeCameraControl() {
    cameraControls = !cameraControls;
    controller.cameraControls = cameraControls;
  }

  Future<void> getAnimations() async {
    controller.availableAnimations().then((value) {
      setState(() {
        availableAnimations = value;
      });
    });
  }
}
