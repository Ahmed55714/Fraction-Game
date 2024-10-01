class AppConfig {
  final String baseUrl;
  final String apiPrefix;
  final String latestRelease;
  final String minimumRelease;

  AppConfig({
    required this.baseUrl,
    required this.apiPrefix,
    required this.latestRelease,
    required this.minimumRelease,
  });

  factory AppConfig.fromJson(Map<String, dynamic> json) {
    return AppConfig(
      baseUrl: json['base_url'] as String,
      apiPrefix: json['api_prefix'] as String,
      latestRelease: json['latest_release'] as String,
      minimumRelease: json['minimum_release'] as String,
    );
  }
}
