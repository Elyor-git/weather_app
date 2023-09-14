import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';
import 'package:weather_app/styles/app_icons.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(AppIcons.searchIcon),
              height: 24,
              width: 24,
            ),
          ),
          Row(
            children: [
              const TabPageSelectorIndicator(
                  backgroundColor: AppColors.black,
                  borderColor: AppColors.black,
                  size: 8),
              const TabPageSelectorIndicator(
                  backgroundColor: AppColors.black,
                  borderColor: AppColors.black,
                  size: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: SizedBox(
                  height: 8,
                  width: 34,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              const TabPageSelectorIndicator(
                  backgroundColor: AppColors.black,
                  borderColor: AppColors.black,
                  size: 8),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(AppIcons.menuIcon),
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
