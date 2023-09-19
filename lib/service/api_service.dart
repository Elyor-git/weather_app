import 'package:dio/dio.dart';
import 'package:weather_app/constants/config.dart';

class ApiService {
  static final ApiService _instance = ApiService._();

  factory ApiService() => _instance;

  late final Dio geoDio;
  late final Dio dio;

  ApiService._() {
    final options = BaseOptions(
      baseUrl: AppConfig.weatherBaseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      responseType: ResponseType.json,
    );
    dio = Dio(options);

    final geoOptions = BaseOptions(
      baseUrl: AppConfig.weatherBaseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      responseType: ResponseType.json,
    );
    geoDio = Dio(geoOptions);
  }
}
