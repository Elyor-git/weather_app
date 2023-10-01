import 'package:flutter/material.dart';
import '../../../styles/app_colors.dart';
import '../../controller/main_controller.dart';

class HourlyWeather extends StatefulWidget {
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
  _HourlyWeatherState createState() => _HourlyWeatherState();
}

class _HourlyWeatherState extends State<HourlyWeather>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
    );

    _scrollController = ScrollController();
    _scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    double scrollOffsetFraction =
        _scrollController.offset / _scrollController.position.maxScrollExtent;
    _controller.value = scrollOffsetFraction;
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10,
            ),
            child: SizedBox(
              height: 5,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  const Divider(
                    color: AppColors.divider,
                  ),
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (BuildContext context, Widget? child) {
                      return Transform.translate(
                        offset: Offset(
                          _controller.value * 338,
                          0,
                        ),
                        child: child,
                      );
                    },
                    child: const SizedBox(
                      height: 3,
                      width: 20,
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
            child: NotificationListener<ScrollUpdateNotification>(
              onNotification: (notification) {
                _handleScroll();
                return false;
              },
              child: ListView.separated(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index == widget.hoursOfWeekdays.length) {
                    return const SizedBox(width: 10);
                  }
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: SizedBox(
                      height: 55,
                      width: 48,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: DateTime.now().hour.toString() ==
                                  widget.hoursOfWeekdays[index].substring(0, 2)
                              ? AppColors.white60
                              : AppColors.white30,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              DateTime.now().hour.toString() ==
                                      widget.hoursOfWeekdays[index]
                                          .substring(0, 2)
                                  ? "now"
                                  : widget.hoursOfWeekdays[index],
                              style: const TextStyle(fontSize: 11),
                            ),
                            Image(
                              image: AssetImage(
                                weatherInIcon(widget.iconOfWeekdays[index]),
                              ),
                              height: 30,
                              width: 30,
                            ),
                            Text(
                              "${fahrenheitToCelsius(widget.tempOfWeekdays[index])}°",
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: widget.hoursOfWeekdays.length + 1,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
