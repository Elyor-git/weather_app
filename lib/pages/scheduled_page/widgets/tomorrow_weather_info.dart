import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';
import 'package:weather_app/styles/app_icons.dart';

import '../../controller/main_controller.dart';

class TomorrowWeatherInfo extends StatefulWidget {
  const TomorrowWeatherInfo({super.key});

  @override
  State<TomorrowWeatherInfo> createState() => _TomorrowWeatherInfoState();
}

class _TomorrowWeatherInfoState extends State<TomorrowWeatherInfo> {
  late final MainController mainController;

  _TomorrowWeatherInfoState() {
    mainController = MainController(setState)..getApi();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
        bottom: 20,
      ),
      child: Card(
        color: AppColors.white80,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 21,
            vertical: 14,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   const Text(
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
                        "${mainController.tomorrowCelsius}°",
                        style: const TextStyle(
                            color: AppColors.scheduledNext7Days,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(width: 10),
                      Image(
                        image: AssetImage(
                          mainController.tomorrowWeatherIcon ??
                              AppIcons.cloudyRainSunIcon,
                        ),
                        height: 80,
                        width: 80,
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WeatherInfo(
                      text: "${mainController.tomorrowRainFall} cm",
                      weatherInfo: AppIcons.umbrellaIcon,
                    ),
                    WeatherInfo(
                      text: "${mainController.tomorrowWindSpeed}km/h",
                      weatherInfo: AppIcons.windIcon,
                    ),
                    Column(
                      children: [
                        const Padding(
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
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "${mainController.tomorrowHumidity} %",
                            style: const TextStyle(
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
