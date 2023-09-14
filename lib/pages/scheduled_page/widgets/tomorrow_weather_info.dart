import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';
import 'package:weather_app/styles/app_icons.dart';

class TomorrowWeatherInfo extends StatelessWidget {
  const TomorrowWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 25,
        bottom: 20,
      ),
      child: Card(
        color: AppColors.white80,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 21,
            vertical: 14,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tomorrow",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.scheduledNext7Days,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "22°",
                        style: TextStyle(
                            color: AppColors.scheduledNext7Days,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 10),
                      Image(
                        image: AssetImage(AppIcons.cloudySunIcon),
                        height: 80,
                        width: 80,
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WeatherInfo(
                      text: "1 cm",
                      weatherInfo: AppIcons.umbrellaIcon,
                    ),
                    WeatherInfo(
                      text: "15km/h",
                      weatherInfo: AppIcons.windIcon,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 24.0,
                            top: 13,
                            left: 10,
                          ),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.humidityShadowColor,
                                    spreadRadius: -3,
                                    blurRadius: 10,
                                    offset: Offset(0, 7),
                                  )
                                ]),
                            child: SizedBox(
                              height: 43,
                              width: 43,
                              child: Image(
                                image: AssetImage(AppIcons.humidityIcon),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "50 %",
                            style: TextStyle(
                              color: AppColors.scheduledNext7Days,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WeatherInfo extends StatelessWidget {
  final String text;
  final String weatherInfo;

  const WeatherInfo({
    super.key,
    required this.text,
    required this.weatherInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: 80,
          child: Image(
            image: AssetImage(weatherInfo),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            color: AppColors.scheduledNext7Days,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
