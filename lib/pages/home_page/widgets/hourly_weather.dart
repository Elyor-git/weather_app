import 'package:flutter/material.dart';
import '../../../styles/app_colors.dart';
import '../../controller/main_controller.dart';

class HourlyWeather extends StatelessWidget {
  final List<double> tempOfWeekdays;
  final List<String> iconOfWeekdays;
  final List<String> hoursOfWeekdays;

  const HourlyWeather({
    super.key,
    required this.tempOfWeekdays,
    required this.hoursOfWeekdays,
    required this.iconOfWeekdays,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      width: double.infinity,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10,
            ),
            child: SizedBox(
              height: 5,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Divider(
                    color: AppColors.divider,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: 3,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.dividerButton,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: hoursOfWeekdays.length,
              separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  height: 55,
                  width: 48,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: AppColors.white30,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          hoursOfWeekdays[index],
                          style: const TextStyle(fontSize: 11),
                        ),
                        Image(
                          image:
                              AssetImage(weatherInIcon(iconOfWeekdays[index])),
                          height: 30,
                          width: 30,
                        ),
                        Text(
                          "${fahrenheitToCelsius(tempOfWeekdays[index])}°",
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
