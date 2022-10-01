import 'package:get/get.dart';
import 'package:getx_pratice/pages/home/HomeController.dart';
import 'package:getx_pratice/pages/image_picker/ImagePickerController.dart';
import 'package:getx_pratice/pages/storage/StorageController.dart';

import '../pages/carousel/CarouselController.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CarouselController());
    Get.lazyPut(() => StorageController());
    Get.lazyPut(() => ImagePickerController());
  }

}