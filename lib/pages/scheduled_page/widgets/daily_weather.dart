import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';
import 'package:weather_app/styles/app_icons.dart';

class DailyWeather extends StatelessWidget {
  const DailyWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, item) => const DetailedDayInfoView(),
        itemCount: 20,
      ),
    );
  }
}

class DetailedDayInfoView extends StatelessWidget {
  const DetailedDayInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: AppColors.white58,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Thursday",
              style: TextStyle(
                color: AppColors.scheduledNext7Days,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
            Row(
              children: [
                Text(
                  "21°",
                  style: TextStyle(
                    color: AppColors.scheduledNext7Days,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image(
                  image: AssetImage(
                    AppIcons.sunIcon,
                  ),
                  height: 45,
                  width: 45,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
