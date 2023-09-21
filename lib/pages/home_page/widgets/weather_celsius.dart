import 'package:flutter/material.dart';

import '../../controller/main_controller.dart';

class WeatherCelsius extends StatelessWidget {
  final String icon;
  final double temp;
  final String weatherInfo;

  const WeatherCelsius({
    super.key,
    required this.icon,
    required this.temp,
    required this.weatherInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              weatherInIcon(icon),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    fahrenheitToCelsius(temp),
                    style: const TextStyle(
                        fontSize: 80, fontWeight: FontWeight.bold, height: 0.8),
                  ),
                  Text(
                    weatherInfo,
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
