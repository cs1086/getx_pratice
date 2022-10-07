import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ImagePickerController.dart';
//練習怎麼使用image picker挑選照片並顯示在畫面上
class ImagePickerPage extends GetView<ImagePickerController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ImagePickerPage')),
      body: SafeArea(child: Column(children: [

        ElevatedButton(onPressed: ()=>controller.selectImage(), child: Text("選擇圖片")),
        Obx(()=>((controller.imageFilePath.isEmpty)?Icon(Icons.photo_library, size: 50):Image.file(File(controller.imageFilePath)))
    )
      ],),
      ),
    );
  }
}