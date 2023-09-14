import 'package:flutter/material.dart';
import 'package:weather_app/pages/home_page/widgets/hourly_weather.dart';
import 'package:weather_app/pages/home_page/widgets/location_view.dart';
import 'package:weather_app/pages/home_page/widgets/my_appbar.dart';
import 'package:weather_app/pages/home_page/widgets/schedule_of_week.dart';
import 'package:weather_app/pages/home_page/widgets/weather_celsius.dart';
import 'package:weather_app/pages/home_page/widgets/weather_info.dart';
import 'package:weather_app/styles/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: SafeArea(
          child: ListView(
            children: const [
              MyAppBar(),
              LocationView(),
              WeatherCelsius(),
              WeatherInfo(),
              ScheduleOfDay(),
              HourlyWeather(),
            ],
          ),
        ),
      ),
    );
  }
}
