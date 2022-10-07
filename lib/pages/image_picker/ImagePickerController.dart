import 'dart:io';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_cropper/image_cropper.dart';
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
    XFile? pickFile=await picker.pickImage(source: ImageSource.camera);
    if(pickFile!=null){
      imageFilePath=await cropImage(pickFile.path);
      GallerySaver.saveImage(imageFilePath).then((sucess){
        print("####存擋結果$sucess");
      });
    }
  }
  Future cropImage(String pickedFilePath) async{
    CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFilePath,
        aspectRatioPresets: Platform.isAndroid
            ? [
          // CropAspectRatioPreset.square,
          // CropAspectRatioPreset.original,
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
          //CropAspectRatioPreset.ratio16x9
        ]
            : [
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.square,
          //CropAspectRatioPreset.ratio16x9
        ],
        uiSettings: [AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.blueAccent,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.square,
            lockAspectRatio: false),IOSUiSettings(title: 'Cropper')]);
    if (croppedFile != null) {
      return croppedFile.path;
    } else {
      return null;
    }
  }
}