import 'package:get/get.dart';
import 'package:getx_pratice/pages/home/HomeController.dart';
import 'package:getx_pratice/pages/image_picker/ImagePickerController.dart';
import 'package:getx_pratice/pages/qrcode/QRCodePageController.dart';
import 'package:getx_pratice/pages/qrcode/QRCodeScanPageController.dart';
import 'package:getx_pratice/pages/slidable/SlidablePageController.dart';
import 'package:getx_pratice/pages/storage/StorageController.dart';

import '../pages/animated_text/WrapChipController.dart';
import '../pages/carousel/CarouselController.dart';
import '../pages/i18n_test/i18n_test_controller.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CarouselController());
    Get.lazyPut(() => StorageController());
    Get.lazyPut(() => ImagePickerController());
    Get.lazyPut(() => SlidablePageController());
    Get.lazyPut(() => QRCodePageController());
    Get.lazyPut(() => QRCodeScanPageController());
    Get.lazyPut(() => WrapChipController());
    Get.lazyPut(() => I18NTestController());
  }

}