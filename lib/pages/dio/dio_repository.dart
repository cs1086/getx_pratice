import '../../api/api_service.dart';
import '../../entity/news.dart';

abstract class DioRepository {
  Future getNews();
}
class DioRepositoryImpl implements DioRepository {
  final apiService = ApiService();

  @override
  Future<News> getNews() async {
    return await apiService.getNews();
  }
}
