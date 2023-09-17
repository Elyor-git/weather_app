import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';
import 'package:weather_app/styles/app_icons.dart';


import '../../controller/main_controller.dart';

class HourlyWeather extends StatefulWidget {
  const HourlyWeather({super.key});

  @override
  State<HourlyWeather> createState() => _HourlyWeatherState();
}

class _HourlyWeatherState extends State<HourlyWeather> {
  late final MainController mainController;

  _HourlyWeatherState() {
    mainController = MainController(setState)..getApi();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      width: double.infinity,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10,
            ),
            child: SizedBox(
              height: 5,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Divider(
                    color: AppColors.divider,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: 3,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.dividerButton,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: mainController.currentDayTime?.length ?? 0,
              separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  height: 55,
                  width: 48,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: AppColors.white30,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          mainController.currentDayTime![index],
                          style: const TextStyle(fontSize: 11),
                        ),
                        Image(
                          image: AssetImage(
                            weatherInIcon(mainController.currentWeatherIcon![index]),
                          ),
                          height: 30,
                          width: 30,
                        ),
                        Text(
                          "${fahrenheitToCelsius(mainController.currentTimeCelsius![index])}°",
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}



class MainDayInfo extends StatelessWidget {
  final String hour;

  const MainDayInfo({
    super.key,
    required this.hour,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 55,
        width: 48,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: AppColors.white30,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                hour,
                style: const TextStyle(fontSize: 11),
              ),
              const Image(
                image: AssetImage(
                  AppIcons.cloudyIcon,
                ),
                height: 30,
                width: 30,
              ),
              const Text(
                "19°",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
