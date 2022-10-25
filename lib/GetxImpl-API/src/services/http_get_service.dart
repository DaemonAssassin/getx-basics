import 'dart:developer';
import 'package:dio/dio.dart';
import 'http_service.dart';

const String baseUrl = 'https://newsapi.org/';
const String apiKey = '455c02879197488e8f408459af86f684';

class HttpGetService implements HttpService {
  Dio? _dio;

  @override
  Future<Response?> getRequest(String url) async {
    Response? response;
    try {
      response = await _dio!.get(url);
    } on DioError catch (e) {
      log(e.message);
      throw Exception(e.message);
    }

    return response;
  }

  void initInterceptor() {
    _dio!.interceptors.add(
      InterceptorsWrapper(
        onError: (e, handler) {
          log(e.message);
        },
        onRequest: (requestOptions, handler) {
          log(requestOptions.baseUrl);
          log(requestOptions.method);
        },
        onResponse: (response, handler) {
          log(response.statusCode.toString());
          log(response.statusMessage ?? 'no status message');
        },
      ),
    );
  }

  @override
  void init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {'Authorization': 'Bearer $apiKey'},
      ),
    );
    initInterceptor();
  }
}
