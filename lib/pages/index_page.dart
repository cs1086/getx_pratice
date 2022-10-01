import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Get.parameters['name']);
    return Scaffold(
      appBar: AppBar(
        title: Text("首頁"),
      ),
      body: Center(
        child:ElevatedButton(child:Text( "返回到登入頁"),onPressed: (){
          Get.back(result: 'success');
        },),
      ),
    );
  }
}
