import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class SlidablePageController extends GetxController{
  var dataList =[];
  @override
  void onInit() {
    dataList.assignAll(Iterable<int>.generate(10));
    super.onInit();
  }
}