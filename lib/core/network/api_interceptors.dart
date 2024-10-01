import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../my_app.dart';
import 'api_constants.dart';

class APIInterceptor implements Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers = await _addLanguage(options.headers);
    // if (!isRefreshTokenPath(options.path)) {
    //   options.headers = await _addToken(options, options.headers);
    // }
    // options.headers =
    //     _addSigningHeaders(options.method, options.path, options.headers);
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  Future<Map<String, dynamic>> _addLanguage(
      Map<String, dynamic> headers) async {
    String language = navigatorKey.currentContext!.locale.languageCode;
    headers[ApiConstants.apiLang] = language;
    return headers;
  }
}
