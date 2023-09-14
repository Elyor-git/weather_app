import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/pages/scheduled_page/scheduled_page.dart';
import 'package:weather_app/styles/app_colors.dart';

class ScheduleOfDay extends StatelessWidget {
  const ScheduleOfDay({super.key});

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
                  builder: (context) => const ScheduledPage(),
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
