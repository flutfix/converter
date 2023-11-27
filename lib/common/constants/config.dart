class AppConfig {
  static final AppConfig _singleton = AppConfig._();

  factory AppConfig() => _singleton;

  AppConfig._();

  static String get baseUrl => 'http://api.exchangeratesapi.io';

  static String get basePath => '/v1';

  static String get api => baseUrl + basePath;

  static String get token => 'a787ea6dcf1f96d91f0c5032f7002523';
}
