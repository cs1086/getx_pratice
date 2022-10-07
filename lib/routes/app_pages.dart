import 'package:get/get.dart';
import 'package:getx_pratice/pages/lottile/lottie_page.dart';
import 'package:getx_pratice/routes/app_bindings.dart';
import '../pages/carousel/carousel_page.dart';
import '../pages/home/home_page.dart';
import '../pages/image_cache/ImageCachePage.dart';
import '../pages/image_picker/image_picker_page.dart';
import '../pages/home/home_page2.dart';
import '../pages/qrcode/QRCodePage.dart';
import '../pages/qrcode/QRCodeScanPage.dart';
import '../pages/slidable/slidable_page.dart';
import '../pages/storage/storage_page.dart';
import 'app_routes.dart';

class AppPages{
  static const initPage=AppRoutes.QRCodePage;//通常首頁都是routes的最上層頁面，如果放children內的頁面會報錯，children下的路徑前面要加上上層頁面的路徑例如底下所有children的路徑前面都要再加上AppRoutes.IndexPage，所以會變成/IndexPage/xxxPage
  static final routes=[GetPage(name: AppRoutes.QRCodePage, page: ()=>QRCodePage(),binding: AppBindings(),children:[
    GetPage(name: AppRoutes.IndexPage, page: ()=>IndexPage(),transition: Transition.zoom),
    GetPage(name: AppRoutes.LottiePage, page: ()=>LottiePage(),binding: AppBindings()),
    GetPage(name: AppRoutes.HomePage, page: ()=>HomePage(),binding: AppBindings()),
    GetPage(name: AppRoutes.CarouselPage, page: ()=>CarouselPage(),binding: AppBindings()),
    GetPage(name: AppRoutes.StoragePage, page: ()=>StoragePage(),binding: AppBindings()),
    GetPage(name: AppRoutes.ImagePickerPage, page: ()=>ImagePickerPage(),binding: AppBindings()),
    GetPage(name: AppRoutes.SlidablePage, page: ()=>SlidablePage(),binding: AppBindings()),
    GetPage(name: AppRoutes.ImageCachePage, page: ()=>ImageCachePage(),binding: AppBindings()),
    GetPage(name: AppRoutes.QRCodeScanPage, page: ()=>QRCodeScanPage(),binding: AppBindings())
  ] )];
}