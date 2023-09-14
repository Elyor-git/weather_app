import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';
import 'package:weather_app/styles/app_icons.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Image(
            image: AssetImage(AppIcons.backArrow),
            height: 38,
            width: 38,
          ),
        ),
        const Text(
          "Next 7 Days",
          style: TextStyle(
            color: AppColors.scheduledNext7Days,
            fontSize: 18,
          ),
        ),
        const Image(
          image: AssetImage(
            AppIcons.invisibleIcon,
          ),
          height: 38,
          width: 38,
        ),
      ],
    );
  }
}
