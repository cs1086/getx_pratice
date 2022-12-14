import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pratice/entity/person.dart';
import 'package:getx_pratice/routes/app_pages.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_pratice/utils/ConnectivityManager.dart';
import 'package:getx_pratice/utils/UserDefault.dart';

import 'i18n/translation_service.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ConnectivityManager().init();
  await UserDefault().init();
  await GetStorage.init();
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
      initialRoute: AppPages.initPage,
      getPages: AppPages.routes,
      routingCallback: (routing) {
        print("####callback=${routing?.current}");
      },
      enableLog: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      translations: TranslationService(),
    );
  }
}