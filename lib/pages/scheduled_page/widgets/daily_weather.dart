import 'package:flutter/material.dart';

import '../../../styles/app_colors.dart';
import '../../controller/main_controller.dart';

class DailyWeather extends StatelessWidget {
  final List<int> weekdays;
  final List<double> weekdaysTemp;
  final List<String> weekdaysIcon;

  const DailyWeather({
    super.key,
    required this.weekdays,
    required this.weekdaysTemp,
    required this.weekdaysIcon,
  });

  @override
  Widget build(BuildContext context) {
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
                  weekDays(weekdays[item + 2]),
                  style: const TextStyle(
                    color: AppColors.scheduledNext7Days,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "${fahrenheitToCelsius(weekdaysTemp[item + 2])}°",
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
                        weatherInIcon(weekdaysIcon[item + 2]),
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
  }
}
