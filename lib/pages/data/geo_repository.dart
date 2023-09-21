import 'dart:convert';
import 'package:dio/dio.dart';
import '../../constants/api_constants.dart';
import '../../constants/config.dart';
import '../../model/geo_model/geo_model.dart';
import '../../service/wrapper/i_servive_wrapper.dart';

abstract interface class IGeoRepository {
  abstract final GeoServiceWrapper wrapper;

  Future<ApiGeoLocation> getGeoData();
}

class GeoRepository implements IGeoRepository {
  GeoRepository() : wrapper = GeoServiceWrapper(dio: _dio);

  static final _dio = Dio(BaseOptions(
    baseUrl: AppConfig.geoBaseUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    responseType: ResponseType.json,
  ));

  @override
  final GeoServiceWrapper wrapper;

  @override
  Future<ApiGeoLocation> getGeoData() async {
    String response = await wrapper.request(
      ApiConstants.geoPath,
      queryParameters: ApiConstants.geoParams(AppConfig.geoApiKey),
    );

    return ApiGeoLocation.fromJson(jsonDecode(response));
  }
}
