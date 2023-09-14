import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';
import 'package:weather_app/styles/app_icons.dart';

class HourlyWeather extends StatelessWidget {
  const HourlyWeather({super.key});

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
              itemBuilder: ( context,  index) =>
                   const SizedBox(width: 13),
              itemCount: 15,
              separatorBuilder: ( context,  index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 55,
                    width: 48,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.white30,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "13:00",
                            style: TextStyle(fontSize: 11),
                          ),
                          Image(
                            image: AssetImage(
                              AppIcons.cloudyIcon,
                            ),
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "19°",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
