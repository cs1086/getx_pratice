import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageController extends GetxController {
  final storage=GetStorage();
  final _textController=TextEditingController().obs;
  //var _isDark="".obs;
  get textController=>_textController.value;
  set textController(value){
    _textController.value.text=value;
  }
  @override
  void onInit() {
    //假設存擋中沒有這個參數就先給init
    textController.text=(storage.read("keepStr")??"init");
    super.onInit();
  }
  void save(){
    storage.write("keepStr", textController.value.text);
  }
}