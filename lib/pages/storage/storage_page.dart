import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'StorageController.dart';
//練習怎麼使用storage這個插件，寫入資料以及讀取資料
class StoragePage extends GetView<StorageController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LottiePage')),
      body: SafeArea(child: Column(children: [
        TextField(controller: controller.textController,),
        ElevatedButton(onPressed: ()=>controller.save(), child: Text("存擋"))
      ],),
      ),
    );
  }
}