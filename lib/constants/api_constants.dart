class ApiConstants {
  ApiConstants._();

  static String weatherPath(String city) => "/VisualCrossingWebServices/rest/services/timeline/$city";

  static Map<String, String> weatherParams({
    required String unitGroup,
    required String key,
  }) =>
      {
        'unitGroup': unitGroup,
        'key': key,
        'contentType': 'json',
      };
  static const geoPath = '/ipgeo';

  static Map<String, String> geoParams(String apiKey) => {
        'apiKey': apiKey,
      };
}
