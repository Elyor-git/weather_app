import '../../model/geo_model/geo_model.dart';
import '../../model/weather_model/weather_model.dart';
import '../../styles/app_icons.dart';
import '../../utils/custom_exeptions.dart';
import '../data/geo_repository.dart';
import '../data/weather_repository.dart';

class MainController {
  final IGeoRepository geoRepository;
  final IWeatherRepository weatherRepository;

  MainController({
    required this.geoRepository,
    required this.weatherRepository,
  });

  WeatherModel? weatherModel;
  ApiGeoLocation? geoModel;

  bool get isProgress => weatherModel == null && geoModel == null;

  Future<void> getWeatherData() async {
    try {
      geoModel = await geoRepository.getGeoData();
      weatherModel =
          await weatherRepository.getWeatherData(geoModel?.city ?? "");
    } on UnknownException catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    } on ClientException catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    } on ServerException catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    } on Object catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    }
  }

  List<String> get listOfHours =>
      weatherModel?.days[0].hours
          .map((e) => e.datetime?.substring(0, 5))
          .cast<String>()
          .toList() ??
      [];

  String weatherInfoInSingleWord() {
    String info = weatherModel?.currentConditions?.icon ?? "";
    String res = "Showery";
    switch (info) {
      case "clear-day" || "clear-night":
        res = "Sunny";
      case "rain":
        res = "Rainy";
      case "snow":
        res = "Snowy";
      case "partly-cloudy-day" || "cloudy" || "partly-cloudy-night":
        res = "Cloudy";
      default:
        res;
    }
    return res;
  }

// currentCelsius =
//     fahrenheitToCelsius(weatherModel.currentConditions?.temp ?? 0);
//
// weatherInfoWord = _weatherInfoInSingleWord(
//     weatherModel.currentConditions?.icon ?? "Showery");
// weatherInfoIcon = weatherInIcon(weatherModel.currentConditions?.icon ?? "");
// rainInfo = _rainFall(weatherModel.currentConditions?.precip ?? 0);
// windSpeed = weatherModel.currentConditions?.windspeed?.round().toString();
// humidity = weatherModel.currentConditions?.humidity?.toStringAsFixed(0);
// currentDayTime = weatherModel.days[0].hours
//     .map((e) => e.datetime?.substring(0, 5))
//     .cast<String>()
//     .toList();
// currentWeatherIcon =
//     weatherModel.days[0].hours.map((e) => e.icon).cast<String>().toList();
// currentTimeCelsius =
//     weatherModel.days[0].hours.map((e) => e.temp).cast<double>().toList();
//
// tomorrowCelsius = fahrenheitToCelsius(weatherModel.days[1].temp ?? 0);
// tomorrowWeatherIcon = weatherInIcon(weatherModel.days[1].icon ?? "");
// tomorrowWindSpeed = weatherModel.days[1].windspeed?.round().toString();
// tomorrowRainFall = _rainFall(weatherModel.days[1].precip ?? 0);
// tomorrowHumidity = weatherModel.days[1].humidity?.toStringAsFixed(0);
// tomorrowWeeks =
//     weatherModel.days.map((e) => e.datetimeEpoch).cast<int>().toList();
// tomorrowCelsiusOfWeeks =
//     weatherModel.days.map((e) => e.temp).cast<double>().toList();
// tomorrowIconOfWeeks =
//     weatherModel.days.map((e) => e.icon).cast<String>().toList();
}

String weekDays(int dateTimeEpoch) {
  String res = "";
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(dateTimeEpoch * 1000);
  int week = dateTime.weekday;
  switch (week) {
    case 1:
      res = "Monday";
    case 2:
      res = "Tuesday";
    case 3:
      res = "Wednesday";
    case 4:
      res = "Thursday";
    case 5:
      res = "Friday";
    case 6:
      res = "Saturday";
    case 7:
      res = "Sunday";
  }
  return res;
}
String weatherInIcon(String info) {
  String res = AppIcons.cloudyRainSunIcon;
  switch (info) {
    case "clear-day":
      res = AppIcons.sunIcon;
    case "rain":
      res = AppIcons.cloudyRainIcon;
    case "snow":
      res = AppIcons.cloudyIcon;
    case "cloudy" || "partly-cloudy-night" || "clear-night":
      res = AppIcons.cloudyIcon;
    case "partly-cloudy-day":
      res = AppIcons.cloudySunIcon;
    default:
      res;
  }
  return res;
}

String fahrenheitToCelsius(double fahrenheit) {
  double number = (fahrenheit - 32) * 5 / 9;
  return number.truncate().toString();
}



String rainFall(double windSpeed) {
  double res = (windSpeed) * 2.54;
  return res.toStringAsFixed(0);
}



