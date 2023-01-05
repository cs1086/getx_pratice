import 'package:get/get.dart';

import '../../entity/news.dart';
import '../../utils/http_util.dart';
import 'dio_repository.dart';
class DioController extends GetxController {
  DioController({required this.repository});
  final DioRepository repository;
  final _isLoading = true.obs;
  set isLoading(value) => this._isLoading.value = value;
  get isLoading => this._isLoading.value;
  final _dataList = <Articles>[].obs;
  get dataList => this._dataList.toList();
  @override
  Future<void> onInit() async {
    print("####dio.oninit()");
    await fetchData();
    super.onInit();
  }
  fetchData() async {
    isLoading = true;
    final newsResult = await repository.getNews();
    _dataList.assignAll(newsResult.articles);
    isLoading = false;
  }
}