import 'error_model.dart';

class ApiResponse<T> {
  int? statusCode;
  bool? success;
  ErrorModel? error;
  T? body;

  ApiResponse({
    this.statusCode,
    this.success,
    this.body,
    this.error,
  });

  ApiResponse.success({this.statusCode, this.body})
      : success = true,
        error = null;

  ApiResponse.error({this.statusCode, this.error})
      : success = false,
        body = null;

  factory ApiResponse.fromJson(
      Map<String, dynamic> json, T Function(dynamic) fromJsonT) {
    return ApiResponse(
      statusCode: json['statusCode'],
      success: json['success'],
      body: json['body'] != null ? fromJsonT(json['body']) : null,
      error: json['error'] != null ? ErrorModel.fromJson(json['error']) : null,
    );
  }

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T) toJsonT) {
    return {
      'statusCode': statusCode,
      'success': success,
      'body': body != null ? toJsonT(body!) : null,
      'error': error?.toJson(),
    };
  }
}
