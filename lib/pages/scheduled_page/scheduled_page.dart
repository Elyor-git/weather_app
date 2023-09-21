import 'package:flutter/material.dart';

import '../../styles/app_colors.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/daily_weather.dart';
import 'widgets/tomorrow_weather_info.dart';

class ScheduledPage extends StatelessWidget {
  final double temp;
  final String icon;
  final double rainFall;
  final double windSpeed;
  final double humidity;
  final List<int> weekdays;
  final List<double> weekdaysTemp;
  final List<String> weekdaysIcon;

  const ScheduledPage({
    super.key,
    required this.rainFall,
    required this.humidity,
    required this.windSpeed,
    required this.temp,
    required this.icon,
    required this.weekdays,
    required this.weekdaysTemp,
    required this.weekdaysIcon,
  });

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
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 25,
            ),
            child: Column(
              children: [
                const CustomAppbar(),
                TomorrowWeatherInfo(
                  rainFallS: rainFall,
                  icon: icon,
                  temp: temp,
                  windSpeed: windSpeed,
                  humidity: humidity,
                ),
                DailyWeather(
                  weekdays: weekdays,
                  weekdaysTemp: weekdaysTemp,
                  weekdaysIcon: weekdaysIcon,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
