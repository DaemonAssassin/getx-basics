import 'package:dio/dio.dart';

abstract class HttpService {
  /// init the client (Dio)
  void init();

  Future<Response?> getRequest(String url);
}
