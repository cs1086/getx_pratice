import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'SlidablePageController.dart';
//練習list搭配左滑右滑開啟新的功能(刪除、修改)
class SlidablePage extends GetView<SlidablePageController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LottiePage')),
      body: SafeArea(
        child: _slidableView(),
      ),
    );
  }
  Widget _slidableView(){
    return ListView.builder(itemCount:controller.dataList.length,itemBuilder: (context,index){
      return _slidableCell(controller.dataList[index].toString());
    });
  }
  Widget _slidableCell(String title){
    return Slidable(
      // Specify a key if the Slidable is dismissible.
      key: const ValueKey(1),

      // The start action pane is the one at the left or the top side.
      startActionPane: const ActionPane(
        // A motion is a widget used to control how the pane animates.
        motion: ScrollMotion(),

        // All actions are defined in the children parameter.
        children: [
          // A SlidableAction can have an icon and/or a label.
          SlidableAction(
            onPressed: showGetXToast,
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
          SlidableAction(
            onPressed: showGetXToast,
            backgroundColor: Color(0xFF21B7CA),
            foregroundColor: Colors.white,
            icon: Icons.share,
            label: 'Share',
          ),
        ],
      ),

      // The end action pane is the one at the right or the bottom side.
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {//往右滑第二次就刪除項目
          print("####dismissible");
        }),
        children: const [
          SlidableAction(
            // An action can be bigger than the others.
            flex: 2,
            onPressed: showGetXToast,
            backgroundColor: Color(0xFF7BC043),
            foregroundColor: Colors.white,
            icon: Icons.archive,
            label: 'Archive',
          ),
          SlidableAction(
            onPressed: showGetXToast,
            backgroundColor: Color(0xFF0392CF),
            foregroundColor: Colors.white,
            icon: Icons.save,
            label: 'Save',
          ),
        ],
      ),

      // The child of the Slidable is what the user sees when the
      // component is not dragged.
      child: Card(elevation: 3,child:ListTile(
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () => print("a"),
      ),),
    );
  }

}
//顯示GetX自帶的Toast功能
void showGetXToast(BuildContext context) {
  String message="測試";
  OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          width: Get.width * 0.3,
          height: Get.width * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.3),
          ),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: message == ""
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.spaceAround,
              children: [
                CircularProgressIndicator(strokeWidth: 3),
                Text(message),
              ],
            ),
          ),
        ),
      ),
    );
  });
  Overlay.of(Get.overlayContext!)?.insert(overlayEntry);
  Future.delayed(Duration(seconds: 4)).then((value) =>overlayEntry.remove() );
}