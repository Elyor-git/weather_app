import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';
import 'package:weather_app/utils/time_extentions.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Toshkent, Uzbekistan",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              DateTime.now().weekMonthDay,
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.greyText,
              ),
            )
          ],
        ),
      );
}
