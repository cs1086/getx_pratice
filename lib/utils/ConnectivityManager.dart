import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ConnectivityManager {
  final Connectivity _connectivity = Connectivity();
  init() async{
    //App launch check once 主動問網路
    final reslut = await _connectivity.checkConnectivity();
    resultHandler(reslut);
    //網路狀態更改時回傳
    _connectivity.onConnectivityChanged.listen((result) {
      //At app using, if network changed
      resultHandler(result);
    });
  }
  resultHandler(ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      //這裡有個問題，如果同時有使用wifi和行動網路連線，假設wifi關閉，這時會顯示無連線callback，但是實際上行動網路還是有連線的，可能要搭配再次主動詢問網路狀態。
      Future.delayed(Duration(seconds: 1)).then((value) {
        Get.snackbar(
          "當前狀態無網路",
          "請檢查網路連線",
          duration: Duration(days: 1),
          icon: Icon(Icons.signal_wifi_bad),
        );
      });
    } else {//如果有網路就把還沒收起來的snackbar收起來
      if (Get.isSnackbarOpen != null) {
        if (Get.isSnackbarOpen!) Get.back();
      }
    }
  }
}