import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class AnimationWidgetController extends GetxController with GetSingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation<double> scaleAnimation;
  late Animation<double> flipAnimation;
  get animationController=>_animationController;
  @override
  void onInit() {
    _animationController=AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    scaleAnimation=TweenSequence(<TweenSequenceItem<double>>[TweenSequenceItem(tween: Tween(begin: 1.0, end: 2.0), weight: 25),
      TweenSequenceItem(tween: Tween(begin: 2.0, end: 3.0), weight: 25),
      TweenSequenceItem(tween: Tween(begin: 3.0, end: 2.0), weight: 25),
      TweenSequenceItem(tween: Tween(begin: 2.0, end: 1.0), weight: 25),]).animate(animationController);
    flipAnimation = Tween(begin: 0.0, end: 2.0).animate(animationController);
    super.onInit();
  }
  animationStart() {
    animationController.forward(from: 0.0);
  }
}