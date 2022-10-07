import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRCodeScanPageController extends GetxController {

  final _scanResult = Barcode("", BarcodeFormat.code93, null).obs;
  set scanResult(value) => _scanResult.value = value;
  get scanResult => _scanResult.value;
  QRViewController? qrViewController;

  void onQRViewCreated(QRViewController qrViewController) {
    this.qrViewController = qrViewController;
    qrViewController?.resumeCamera();//重啟相機，不加這行的話，相機都不會自動啟用
    qrViewController.scannedDataStream.listen((scanData) {
      scanResult = scanData;
    });
  }

  cleanScanResult() {
    scanResult = Barcode("", BarcodeFormat.code93, null);
  }
}