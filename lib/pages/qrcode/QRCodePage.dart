import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pratice/pages/qrcode/QRCodePageController.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../routes/app_routes.dart';

class QRCodePage extends GetView<QRCodePageController> {
  QRCodePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              Text("scan qrcode"),
              Obx(() => SizedBox(
                    height: Get.width * 0.8,
                    width: Get.width * 0.8,
                    child: QrImage(
                      data: controller.qrCodeData,
                      version: QrVersions.auto,
                      size: Get.height * 0.8,
                      gapless: false,
                    ),
                  )),
              CupertinoButton(
                child: Text("QR code Scan"),
                color: Colors.blue,
                onPressed: () => Get.toNamed(AppRoutes.QRCodePage+AppRoutes.QRCodeScanPage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
