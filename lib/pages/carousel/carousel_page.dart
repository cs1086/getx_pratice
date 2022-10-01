import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pratice/component/carousel.dart';

import 'CarouselController.dart';

class CarouselPage extends GetView<CarouselController> {
 // const CarouselPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("####CarouselPage.build()");
    return Scaffold(
      appBar: AppBar(
        title: Text("SliderListPage"),
      ),
      body: SafeArea(
        child: Center(
          child: CarouselSlide(dataList: controller.dataList),
        ),
      ),
    );
  }
}
