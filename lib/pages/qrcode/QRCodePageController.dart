import 'package:get/get.dart';
import 'package:meta/meta.dart';

class QRCodePageController extends GetxController {

  final _qrCodeData = ''.obs;
  set qrCodeData(value) => _qrCodeData.value = value;
  get qrCodeData => _qrCodeData.value;
  @override
  void onInit() {
    qrCodeData = 'https://ithelp.ithome.com.tw/2021ironman';
    super.onInit();
  }
}