import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'i18n_test_controller.dart';
//學習多國語系、snackbar使用、Get.width(寬), Get.height(高)
class I18NTestPage extends GetView<I18NTestController> {
  const I18NTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title".tr+",螢幕高度${Get.height},螢幕寬度${Get.width}"),
      ),
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              Card(
                child: ListTile(
                    title: Text("en_US"),
                    onTap: () {
                      controller.updateTranslation(Locale("en", "US"));
                      Get.snackbar(
                        "修改語系",
                        "已改成英文",
                      );
                    }),
              ),
              Card(
                child: ListTile(
                  title: Text("zh_TW"),
                  onTap: () {
                    controller.updateTranslation(Locale("zh", "TW"));
                    Get.snackbar(
                      "修改語系",
                      "已改成繁中",
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("zh_CN"),
                  onTap: () {
                    controller.updateTranslation(Locale("zh", "CN"));
                    Get.snackbar(
                      "修改語系",
                      "已改成簡中",
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
