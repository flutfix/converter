import 'package:converter/common/constants/config.dart';
import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  TokenInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({'access_key': AppConfig.token});
    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
  }
}
