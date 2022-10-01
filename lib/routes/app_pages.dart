import 'package:get/get.dart';
import 'package:getx_pratice/pages/lottile/lottie_page.dart';
import 'package:getx_pratice/routes/app_bindings.dart';
import '../pages/carousel/carousel_page.dart';
import '../pages/home/home_page.dart';
import '../pages/image_picker/image_picker_page.dart';
import '../pages/index_page.dart';
import '../pages/storage/storage_page.dart';
import 'app_routes.dart';

class AppPages{
  static const initPage=AppRoutes.StoragePage;//通常首頁都是routes的最上層頁面，如果放children下頁面會報錯
  static final routes=[GetPage(name: AppRoutes.StoragePage, page: ()=>StoragePage(),binding: AppBindings(),children:[
    GetPage(name: AppRoutes.IndexPage, page: ()=>IndexPage(),transition: Transition.zoom),
    GetPage(name: AppRoutes.LottiePage, page: ()=>LottiePage(),binding: AppBindings()),
    GetPage(name: AppRoutes.HomePage, page: ()=>HomePage(),binding: AppBindings()),
    GetPage(name: AppRoutes.CarouselPage, page: ()=>CarouselPage(),binding: AppBindings()),
    GetPage(name: AppRoutes.ImagePickerPage, page: ()=>ImagePickerPage(),binding: AppBindings())
  ] )];
}