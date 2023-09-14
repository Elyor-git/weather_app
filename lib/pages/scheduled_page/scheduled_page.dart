import 'package:flutter/material.dart';
import 'package:weather_app/pages/scheduled_page/widgets/custom_appbar.dart';
import 'package:weather_app/pages/scheduled_page/widgets/daily_weather.dart';
import 'package:weather_app/pages/scheduled_page/widgets/tomorrow_weather_info.dart';
import 'package:weather_app/styles/app_colors.dart';

class ScheduledPage extends StatelessWidget {
  const ScheduledPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.appBGGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 25,
            ),
            child: Column(
              children:  [
                CustomAppbar(),
                TomorrowWeatherInfo(),
                DailyWeather(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
