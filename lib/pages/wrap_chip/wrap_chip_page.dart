import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../animated_text/WrapChipController.dart';

class WrapChipPage extends GetView<WrapChipController> {
  const WrapChipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Stack(
            children: [
              Obx(() => Wrap(
                    spacing: 5,//左右間隔
                    runSpacing: 5,//上下間隔
                    children:
                        List.generate(controller.chipList.length, (index) {
                      final title = controller.chipList[index];
                      return Chip(
                        label: Text(
                          title,
                          style: TextStyle(fontSize: 40),
                        ),
                        onDeleted: () => controller.removeChipData(index),
                      );
                    }),
                  )),
              Positioned.fill(
                bottom: 8,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child:FloatingActionButton(
                    onPressed: () => controller.addChipData(),
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
