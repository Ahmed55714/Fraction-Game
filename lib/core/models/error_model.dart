class ErrorModel {
  final String code;
  final dynamic detail;

  ErrorModel({
    required this.code,
    required this.detail,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    final code = json['error']['code'] as String;
    final detailJson = json['error']['detail'];

    if (detailJson is String) {
      return ErrorModel(
        code: code,
        detail: detailJson,
      );
    } else if (detailJson is Map<String, dynamic>) {
      final detail = detailJson.map((key, value) {
        if (value is List<dynamic>) {
          final errors = value.map((error) => error.toString()).toList();
          return MapEntry(key, errors);
        } else {
          return MapEntry(key, [value.toString()]);
        }
      });

      return ErrorModel(
        code: code,
        detail: detail,
      );
    } else if (detailJson is List<dynamic>) {
      final detail = detailJson.map((error) => error.toString()).toList();

      return ErrorModel(
        code: code,
        detail: detail,
      );
    } else {
      return ErrorModel(
        code: code,
        detail: detailJson.toString(),
      );
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'error': {
        'code': code,
        'detail': _convertDetailToJson(detail),
      },
    };
  }

  dynamic _convertDetailToJson(dynamic detail) {
    if (detail is String) {
      return detail;
    } else if (detail is Map<String, dynamic>) {
      return detail.map((key, value) {
        if (value is List<String>) {
          return MapEntry(key, value);
        } else {
          return MapEntry(key, value.toString());
        }
      });
    } else if (detail is List<String>) {
      return detail;
    } else {
      return detail.toString();
    }
  }
}
