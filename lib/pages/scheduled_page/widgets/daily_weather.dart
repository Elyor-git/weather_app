import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';

import '../../controller/main_controller.dart';

class DailyWeather extends StatefulWidget {
  const DailyWeather({super.key});

  @override
  State<DailyWeather> createState() => _DailyWeatherState();
}

class _DailyWeatherState extends State<DailyWeather> {
  late final MainController mainController;

  _DailyWeatherState() {
    mainController = MainController(setState)..getApi();
  }

  @override
  Widget build(BuildContext context) {
    if (mainController.tomorrowWeeks != null) {
      return Expanded(
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, item) => Card(
            color: AppColors.white58,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    weekDays(mainController.tomorrowWeeks![item+2]),
                    style: const TextStyle(
                      color: AppColors.scheduledNext7Days,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "${fahrenheitToCelsius(mainController.tomorrowCelsiusOfWeeks![item+2])}°",
                        style: const TextStyle(
                          color: AppColors.scheduledNext7Days,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage(
                          weatherInIcon(mainController.tomorrowIconOfWeeks![item+2]),
                        ),
                        height: 45,
                        width: 45,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return const SizedBox(height: 100, width: double.infinity,);
    }

  }
}
