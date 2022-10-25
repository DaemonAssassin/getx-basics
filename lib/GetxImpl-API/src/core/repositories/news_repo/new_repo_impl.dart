import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import '../../../services/http_get_service.dart';
import '../../../services/http_service.dart';
import '../../models/headline/article.dart';
import '../../models/headline/headline.dart';
import 'news_repo.dart';

class NewsRepoImpl implements NewsRepository {
  NewsRepoImpl() {
    _httpService = Get.put<HttpService>(HttpGetService());
    _httpService!.init();
  }

  HttpService? _httpService;

  @override
  Future<List<Article>> getNewsHeadline() async {
    dio.Response? response =
        await _httpService!.getRequest('v2/top-headlines?country=us');
    Headline headline = Headline.fromMap(response!.data);
    return headline.articles!;
  }

  @override
  Future<List<Article>> getSearchedNews(String query) async {
    dio.Response? response =
        await _httpService!.getRequest('v2/everything?q=$query');
    Headline headline = Headline.fromMap(response!.data);
    return headline.articles!;
  }
}
