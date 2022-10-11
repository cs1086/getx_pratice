import 'dart:math';

import 'package:get/get.dart';

class WrapChipController extends GetxController {
  final _chipList =<String>[].obs;
  get chipList => _chipList.value;
  addChipData(){
    Random random=Random();
    int randomNumber=random.nextInt(200);
    _chipList.add("$randomNumber");
  }
  removeChipData(int index){
    _chipList.removeAt(index);
  }
}