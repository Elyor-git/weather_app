import 'dart:convert';
import 'package:dio/dio.dart';

import '../../constants/api_constants.dart';
import '../../constants/config.dart';
import '../../model/weather_model/weather_model.dart';
import '../../service/wrapper/i_servive_wrapper.dart';

abstract interface class IWeatherRepository {
  abstract final WeatherServiceWrapper wrapper;

  Future<WeatherModel> getWeatherData(String city);
}

class WeatherRepository implements IWeatherRepository {
  WeatherRepository() : wrapper = WeatherServiceWrapper(dio: _dio);

  static final _dio = Dio(BaseOptions(
    baseUrl: AppConfig.weatherBaseUrl,
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
    responseType: ResponseType.json,
  ));

  @override
  final WeatherServiceWrapper wrapper;

  @override
  Future<WeatherModel> getWeatherData(String city) async {
    String response = await wrapper.request(
      ApiConstants.weatherPath(city),
      queryParameters: ApiConstants.weatherParams(
        unitGroup: "us",
        key: AppConfig.weatherApiKey,
      ),
    );
    return WeatherModel.fromJson(jsonDecode(response));
  }
}
