import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'HomeController.dart';
//首頁 練習基本的getx狀態管理
class HomePage extends GetView<HomeController> {
  //final HomeController c = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登入頁'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
                  () => Text(
                "Clicks: ${controller.count}",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            GetX<HomeController>(
              initState: (_)=>print("show"),
              builder: (controller) {
                print("####count 1 rebuild");
                return Text('${controller.count}');
              },
            ),
            ElevatedButton(
                onPressed: () {
                  //Get.to(IndexPage())?.then((value) =>print("####value="+value));
                  Get.toNamed("/IndexPage?device=phone&id=354&name=Enzo");
                },
                child: Text("換到首頁")),
            ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "Hey i'm a Get SnackBar!", // title
                    "It's unbelievable! I'm using SnackBar without context, without boilerplate, without Scaffold, it is something truly amazing!", // message
                    icon: Icon(Icons.alarm),
                    shouldIconPulse: true,
                    onTap:(_){

                    },
                    barBlur: 20,
                    isDismissible: true,
                    duration: Duration(seconds: 3),
                  );

                },
                child: Text("snackbar")),
            ElevatedButton(
                onPressed: () {
                  Get.dialog(Dialog(child: Text("自定義"),));
                },
                child: Text("dialog")),
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                      Container(
                        child: Wrap(
                          children: <Widget>[
                            ListTile(
                                leading: Icon(Icons.music_note),
                                title: Text('Music'),
                                onTap: () {}
                            ),
                            ListTile(
                              leading: Icon(Icons.videocam),
                              title: Text('Video'),
                              onTap: () {},
                            ),
                          ],
                        ),
                      )
                  );
                },
                child: Text("buttonSheet")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}