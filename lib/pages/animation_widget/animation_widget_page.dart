import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'animation_widget_controller.dart';

class AnimationWidgetPage extends GetView<AnimationWidgetController> {
  const AnimationWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedBuilder(
        animation: controller.animationController,
        builder: (BuildContext context, Widget? child) {
          return Transform(
            child: child,
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..scale(controller.scaleAnimation.value,
                  controller.scaleAnimation.value, 1)
              ..rotateY(pi * controller.flipAnimation.value),
          );
        },
            child: IconButton(
              icon: Icon(Icons.ac_unit, size: 50),
              onPressed: () => controller.animationStart(),
            ),
      )),
    );
  }
}
