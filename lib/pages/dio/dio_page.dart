import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pratice/pages/dio/dio_controller.dart';

import '../../component/ShimmerWidget.dart';

class DioPage extends GetView<DioController> {
  const DioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => AnimatedSwitcher(
            duration: const Duration(milliseconds: 1000),
            switchInCurve: Curves.easeIn,
            child: (controller.isLoading)
            // ? Center(child: CircularProgressIndicator())
                ? ListViewShimmer(key: ValueKey<int>(0))
                : ListView.builder(
              key: ValueKey<int>(1),
              itemCount: controller.dataList.length,
              itemBuilder: (_, index) {
                final title = controller.dataList[index].title;
                final content = controller.dataList[index].content;
                return Card(
                  child: ListTile(
                    title: Text(title),
                    subtitle: Text(content),
                  ),
                );
              },
            ),)),
      ),
    );
  }
}
