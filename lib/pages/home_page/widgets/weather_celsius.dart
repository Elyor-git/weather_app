import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_icons.dart';

import '../../controller/main_controller.dart';

class WeatherCelsius extends StatefulWidget {
  const WeatherCelsius({super.key});

  @override
  State<WeatherCelsius> createState() => _WeatherCelsiusState();
}

class _WeatherCelsiusState extends State<WeatherCelsius> {
  late final MainController mainController;

  _WeatherCelsiusState(){
    mainController = MainController(setState)..getApi();
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
       top: 4,
        bottom: 4,
         right: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Image(
            height: 180,
            width: 200,
            fit: BoxFit.cover,
            image: AssetImage(
              mainController.weatherInfoIcon ?? AppIcons.cloudyRainSunIcon,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    mainController.currentCelsius ?? "",
                    style: const TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      height: 0.8
                    ),
                  ),
                   Text(
                    mainController.weatherInfoWord ?? "",
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  )
                ],
              ),
              const Text("°C")
            ],
          )
        ],
      ),
    );
  }
}
