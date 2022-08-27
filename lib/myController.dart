import 'package:get/get.dart';

class myController extends GetxController{
  var count=0.obs;
  var count2=0.obs;
  get total=>count+count2.value;
  increment(){count++;print("####count=$count");}

  @override
  void onInit() {
    count.firstRebuild=false;
    count.value=10;
    //ever(count, fireRoute);
    /// Called every time `count1` changes.
    //ever(count1, (_) => print("$_ has been changed"));

    /// Called only first time the variable $_ is changed
    once(count, (_) => print("$_ was changed once"));

    /// Anti DDos - Called every time the user stops typing for 1 second, for example.
    debounce(count, (_) => print("@@@@debouce$_"), time: Duration(seconds: 1));

    /// Ignore all changes within 1 second.
    interval(count, (_) => print("@@@@interval $_"), time: Duration(seconds: 1));
    count.update((val) {
      print("####count.update.val=${val}");
      val=10;
    });
    super.onInit();
  }
  fireRoute(thisCount) {
    print("####fireRoute.thisCount=$thisCount");
  }
}