import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../models/api_response.dart';
import '../models/error_model.dart';
import 'api_config.dart';
import 'api_interceptors.dart';

enum HttpMethod { get, post, patch, delete }

class APIService {
  Future<ApiResponse> sendRequest({
    required String endpoint,
    required HttpMethod method,
    dynamic formData,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? customHeaders,
  }) async {
    final Dio dio = Dio();
    dio.options = BaseOptions(
      baseUrl: Uri.encodeFull(ApiConfig.endpoint),
      connectTimeout: ApiConfig.timeout,
      receiveTimeout: ApiConfig.timeout,
      sendTimeout: ApiConfig.timeout,
    );
    dio.interceptors.add(APIInterceptor());
    dio.interceptors.add(PrettyDioLogger());

    try {
      final response = await dio.request(
        endpoint,
        data: formData,
        queryParameters: queryParameters,
        options: Options(headers: customHeaders, method: method.name),
      );

      return _buildResponse(response);
    } catch (exception) {
      if (exception is DioException) {
        if (exception.response == null) {
          return _buildErrorResponse(exception);
        } else {
          return _buildResponse(exception.response!);
        }
      } else {
        return ApiResponse(statusCode: 500);
      }
    }
  }

  ApiResponse _buildResponse(Response? response) {
    ApiResponse apiResponse = ApiResponse(
        statusCode: response?.statusCode,
        success: isSucessResponse(response?.statusCode));

    if (response?.statusCode == 200 || response?.statusCode == 201) {
      apiResponse.body = response?.data;
    } else {
      apiResponse.error = ErrorModel.fromJson(response?.data);
    }

    return apiResponse;
  }

  bool isSucessResponse(int? statusCode) {
    return statusCode != null && statusCode >= 200 && statusCode < 300;
  }

  ApiResponse _buildErrorResponse(DioException error) {
    if (error.error is SocketException) {
      return ApiResponse(statusCode: 502);
    } else if (error is TimeoutException) {
      return ApiResponse(statusCode: 504);
    } else {
      return ApiResponse(statusCode: 500);
    }
  }
}
