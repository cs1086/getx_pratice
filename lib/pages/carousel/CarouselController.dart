import 'package:get/get.dart';
class CarouselController extends GetxController {
  final _dataList=[].obs;
  get dataList=>_dataList;
  @override
  void onInit() {
    print("####CarouselController.onInit()");
    _dataList.assignAll(Iterable<int>.generate(10).toList());
    _dataList.add(10);
  }
}