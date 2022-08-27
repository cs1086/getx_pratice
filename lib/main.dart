import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pratice/myController.dart';
import 'package:getx_pratice/page/index_page.dart';
import 'package:getx_pratice/model/person.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Person person1=Person();

  Person person2=Person();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('person1==person2=${person1==person2}');
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MyHomePage()),
        GetPage(name: '/IndexPage', page: () => IndexPage(),transition: Transition.zoom),
      ],
      routingCallback: (routing) {
        print("####callback=${routing?.current}");
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final myController c = Get.put(myController());
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
                "Clicks: ${c.count}",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            GetX<myController>(
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
                child: Text("buttonSheet"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}