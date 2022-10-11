import 'package:get/get.dart';
import 'en_US.dart';
import 'zh_TW.dart';
import 'zh_CN.dart';
class TranslationService extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US':en_US,
    'zh_TW':zh_TW,
    'zh_CN':zh_CN
  };

}