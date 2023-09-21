import 'package:dio/dio.dart';

import '../api_service.dart';

abstract interface class IServiceWrapper {
  abstract Dio dio;
  abstract ApiService apiService;

  Future<String> request(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    Map<String, String>? body,
  });
}

class WeatherServiceWrapper implements IServiceWrapper {
  WeatherServiceWrapper({required this.dio}) : apiService = ApiService(dio);

  @override
  ApiService apiService;

  @override
  Dio dio;

  @override
  Future<String> request(
    String path, {
    Method method = Method.get,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    Map<String, Object>? body,
  }) =>
      apiService.request(
        path,
        method: method,
        headers: headers,
        queryParameters: queryParameters,
        body: body,
      );
}

class GeoServiceWrapper implements IServiceWrapper {
  GeoServiceWrapper({required this.dio}) : apiService = ApiService(dio);

  @override
  ApiService apiService;

  @override
  Dio dio;

  @override
  Future<String> request(
      String path, {
        Method method = Method.get,
        Map<String, String>? headers,
        Map<String, String>? queryParameters,
        Map<String, Object>? body,
      }) =>
      apiService.request(
        path,
        method: method,
        headers: headers,
        queryParameters: queryParameters,
        body: body,
      );
}
