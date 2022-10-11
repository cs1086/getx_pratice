import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class I18NTestController extends GetxController {
  @override
  void onInit() {

    super.onInit();
  }
  updateTranslation(Locale locale){
    Get.updateLocale(locale);
  }
}