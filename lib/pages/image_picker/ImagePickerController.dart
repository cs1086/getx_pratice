import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  final _imageFilePath="".obs;
  get imageFilePath=>_imageFilePath.value;
  set imageFilePath(value)=>_imageFilePath.value=value;
  @override
  void onInit() {

    super.onInit();
  }

  void selectImage() async{
    final picker=ImagePicker();
    XFile? pickFile=await picker.pickImage(source: ImageSource.gallery);
    if(pickFile!=null){
      imageFilePath=pickFile.path;
    }
  }
}