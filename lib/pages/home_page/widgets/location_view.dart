import 'package:flutter/material.dart';
import 'package:weather_app/utils/time_extentions.dart';

import '../../../styles/app_colors.dart';

class LocationView extends StatelessWidget {
  final String cityAndCountryName;
  const LocationView({super.key, required this.cityAndCountryName});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cityAndCountryName,
              style: const TextStyle(
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
