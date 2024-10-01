import 'api_endpoints.dart';

class ApiConfig {
  static const Duration timeout = Duration(milliseconds: 80000);
  static final String endpoint = Uri.encodeFull(ApiEndpoints.baseUrl);
}
