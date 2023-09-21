import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/pages/scheduled_page/scheduled_page.dart';
import 'package:weather_app/styles/app_colors.dart';

class ScheduleOfDay extends StatelessWidget {
  final double temp;
  final String icon;
  final double rainFall;
  final double windSpeed;
  final double humidity;
  final List<int> weekdays;
  final List<double> weekdaysTemp;
  final List<String> weekdaysIcon;

  const ScheduleOfDay({
    super.key,
    required this.rainFall,
    required this.icon,
    required this.temp,
    required this.windSpeed,
    required this.humidity,
    required this.weekdays,
    required this.weekdaysTemp,
    required this.weekdaysIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Text(
                "Today",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Tomorrow",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.scheduleOfWeekTextColor,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScheduledPage(
                    rainFall: rainFall,
                    humidity: humidity,
                    windSpeed: windSpeed,
                    temp: temp,
                    icon: icon,
                    weekdays: weekdays,
                    weekdaysTemp: weekdaysTemp,
                    weekdaysIcon: weekdaysIcon,
                  ),
                ),
              );
            },
            child: const Row(
              children: [
                Text(
                  "Next 7 Days",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.scheduleOfWeekTextColor,
                  ),
                ),
                SizedBox(width: 13),
                Icon(
                  CupertinoIcons.right_chevron,
                  size: 14,
                  color: AppColors.scheduleOfWeekTextColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
