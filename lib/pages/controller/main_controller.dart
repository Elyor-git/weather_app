import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:weather_app/constants/api_constants.dart';
import 'package:weather_app/model/day.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/styles/app_icons.dart';

class MainController {
  String? addressOfCountryAndCity;
  String? currentCelsius;
  String? weatherInfoWord;
  String? weatherInfoIcon;
  String? rainInfo;
  String? windSpeed;
  String? humidity;
  List<String>? currentDayTime;
  List<String>? currentWeatherIcon;
  List<double>? currentTimeCelsius;

  String? tomorrowCelsius;
  String? tomorrowWeatherIcon;
  String? tomorrowWindSpeed;
  String? tomorrowRainFall;
  String? tomorrowHumidity;
  List<int>? tomorrowWeeks;
  List<double>? tomorrowCelsiusOfWeeks;
  List<String>? tomorrowIconOfWeeks;

  void Function(void Function()) update;

  MainController(this.update);

  Future<void> getApi() async {
    Response? response;
    try {
      final Uri uri = Uri.parse(ApiConstants.url);
      response = await get(uri);
    } catch (e, stackTrace) {
      FormatException("$e, stackTrace:$stackTrace");
    }

    final WeatherModel weatherModel =
        WeatherModel.fromJson(jsonDecode(response?.body ?? ""));

    addressOfCountryAndCity = weatherModel.resolvedAddress;
    currentCelsius =
        fahrenheitToCelsius(weatherModel.currentConditions?.temp ?? 0);

    weatherInfoWord = weatherInfoInSingleWord(
        weatherModel.currentConditions?.icon ?? "Showery");
    weatherInfoIcon = weatherInIcon(weatherModel.currentConditions?.icon ?? "");
    rainInfo = rainFall(weatherModel.currentConditions?.precip ?? 0);
    windSpeed = weatherModel.currentConditions?.windspeed?.round().toString();
    humidity = weatherModel.currentConditions?.humidity?.toStringAsFixed(0);
    currentDayTime = weatherModel.days[0].hours
        ?.map((e) => e.datetime?.substring(0, 5))
        .cast<String>()
        .toList();
    currentWeatherIcon =
        weatherModel.days[0].hours?.map((e) => e.icon).cast<String>().toList();
    currentTimeCelsius =
        weatherModel.days[0].hours?.map((e) => e.temp).cast<double>().toList();

    tomorrowCelsius = fahrenheitToCelsius(weatherModel.days[1].temp ?? 0);
    tomorrowWeatherIcon = weatherInIcon(weatherModel.days[1].icon ?? "");
    tomorrowWindSpeed = weatherModel.days[1].windspeed?.round().toString();
    tomorrowRainFall = rainFall(weatherModel.days[1].precip ?? 0);
    tomorrowHumidity = weatherModel.days[1].humidity?.toStringAsFixed(0);
    tomorrowWeeks =
        weatherModel.days.map((e) => e.datetimeEpoch).cast<int>().toList();
    tomorrowCelsiusOfWeeks = weatherModel.days.map((e) => e.temp).cast<double>().toList();
    tomorrowIconOfWeeks = weatherModel.days.map((e) => e.icon).cast<String>().toList();

    update(() {});
  }
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

String fahrenheitToCelsius(double fahrenheit) {
  double number = (fahrenheit - 32) * 5 / 9;
  return number.truncate().toString();
}

String weatherInfoInSingleWord(String info) {
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

String rainFall(double info) {
  double res = info * 2.54;
  return res.toStringAsFixed(0);
}
