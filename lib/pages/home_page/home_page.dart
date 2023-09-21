import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_icons.dart';
import '../../styles/app_colors.dart';
import '../controller/main_controller.dart';
import '../data/geo_repository.dart';
import '../data/weather_repository.dart';
import 'widgets/hourly_weather.dart';
import 'widgets/location_view.dart';
import 'widgets/my_appbar.dart';
import 'widgets/schedule_of_week.dart';
import 'widgets/weather_celsius.dart';
import 'widgets/weather_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final MainController mainController;

  @override
  void initState() {
    super.initState();
    mainController = MainController(
      geoRepository: GeoRepository(),
      weatherRepository: WeatherRepository(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.appBGGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: FutureBuilder(
          future: mainController.getWeatherData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return SafeArea(
                child: ListView(
                  children: [
                    const MyAppBar(),
                    LocationView(
                      cityAndCountryName:
                          mainController.weatherModel!.resolvedAddress!,
                    ),
                    WeatherCelsius(
                      icon:
                          mainController.weatherModel!.currentConditions!.icon!,
                      temp:
                          mainController.weatherModel!.currentConditions!.temp!,
                      weatherInfo: mainController.weatherInfoInSingleWord(),
                    ),
                    WeatherInfo(
                      rainFallSpeed: mainController
                              .weatherModel!.currentConditions!.precip ??
                          0,
                      humidity: mainController
                              .weatherModel!.currentConditions!.humidity ??
                          0,
                      windSpeed: mainController
                          .weatherModel!.currentConditions!.windspeed!,
                    ),
                    ScheduleOfDay(
                      rainFall:
                          mainController.weatherModel?.days[1].precip ?? 0,
                      icon: mainController.weatherModel?.days[1].icon ??
                          "clear-day",
                      temp: mainController.weatherModel!.days[1].temp ?? 0,
                      windSpeed:
                          mainController.weatherModel?.days[1].windspeed ?? 0,
                      humidity:
                          mainController.weatherModel?.days[1].humidity ?? 0,
                      weekdays: mainController.weatherModel?.days
                              .map((e) => e.datetimeEpoch)
                              .cast<int>()
                              .toList() ??
                          [],
                      weekdaysTemp: mainController.weatherModel?.days
                              .map((e) => e.temp)
                              .cast<double>()
                              .toList() ??
                          [],
                      weekdaysIcon: mainController.weatherModel?.days
                              .map((e) => e.icon)
                              .cast<String>()
                              .toList() ??
                          [],
                    ),
                    HourlyWeather(
                      tempOfWeekdays: mainController.weatherModel!.days[0].hours
                          .map((e) => e.temp)
                          .cast<double>()
                          .toList(),
                      hoursOfWeekdays: mainController
                          .weatherModel!.days[0].hours
                          .map((e) => e.datetime?.substring(0, 5))
                          .cast<String>()
                          .toList(),
                      iconOfWeekdays: mainController.weatherModel!.days[0].hours
                          .map((e) => e.icon)
                          .cast<String>()
                          .toList(),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
