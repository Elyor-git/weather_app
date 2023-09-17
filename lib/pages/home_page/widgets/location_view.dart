import 'package:flutter/material.dart';
import 'package:weather_app/pages/controller/main_controller.dart';
import 'package:weather_app/styles/app_colors.dart';
import 'package:weather_app/utils/time_extentions.dart';

class LocationView extends StatefulWidget {
  const LocationView({super.key});

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  late final MainController mainController;

  _LocationViewState() {
    mainController = MainController(setState)..getApi();
  }
  @override
  Widget build(BuildContext context) => Padding(
        padding:  const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              mainController.addressOfCountryAndCity ?? "",
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
