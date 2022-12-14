import '../../models/headline/article.dart';

abstract class NewsRepository {
  Future<List<Article>> getNewsHeadline();
  Future<List<Article>> getSearchedNews(String query);
}
