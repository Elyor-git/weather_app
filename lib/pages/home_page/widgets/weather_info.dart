import 'package:flutter/material.dart';
import 'package:weather_app/pages/controller/main_controller.dart';
import 'package:weather_app/utils/list_extention.dart';

import '../../../styles/app_colors.dart';
import '../../../styles/app_icons.dart';

class WeatherInfo extends StatefulWidget {
  const WeatherInfo({super.key});

  @override
  State<WeatherInfo> createState() => _WeatherInfoState();
}

class _WeatherInfoState extends State<WeatherInfo> {
  late final MainController mainController;

  _WeatherInfoState() {
    mainController = MainController(setState)..getApi();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children:  <Widget>[
          DetailItem(
            icon: AppIcons.umbrellaIcon,
            info: "RainFall",
            action: "${mainController.rainInfo ?? 0}cm",
          ),
           DetailItem(
            icon: AppIcons.windIcon,
            info: "Wind",
            action: "${mainController.windSpeed ?? 0}km/h",
          ),
           DetailItem(
            icon: AppIcons.humidityIcon,
            info: "Humidity",
            action: "${mainController.humidity ?? 0}%",
          ),
        ].addBetween(
          const SizedBox(height: 5),
        ),
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  const DetailItem({
    required this.icon,
    required this.info,
    required this.action,
    super.key,
  });

  final String icon;
  final String info;
  final String action;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(
            width: 1.0,
            color: AppColors.white50,
          ),
          color: AppColors.white30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (info == "Humidity")
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12),
                            ),
                            image: DecorationImage(
                              image: AssetImage(icon),
                              fit: BoxFit.cover,
                            ),
                            color: AppColors.white,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0.5, 10),
                                spreadRadius: 0.1,
                                blurRadius: 10,
                                color: AppColors.blue,
                              )
                            ]),
                      ),
                    ),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Image(
                      image: AssetImage(icon),
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                Text(info),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Text(action),
            ),
          ],
        ),
      ),
    );
  }
}
