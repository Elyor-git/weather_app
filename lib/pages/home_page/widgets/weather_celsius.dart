import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_icons.dart';

class WeatherCelsius extends StatelessWidget {
  const WeatherCelsius({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
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
              AppIcons.cloudyRainSunIcon,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "19",
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      height: 0.8
                    ),
                  ),
                  Text(
                    "Rainy",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  )
                ],
              ),
              Text("°C")
            ],
          )
        ],
      ),
    );
  }
}
