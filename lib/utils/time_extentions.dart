enum WeekDay {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  weekend("Weekend"),
  saturday("Saturday"),
  sunday("Sunday");

  const WeekDay(this.dayName);

  final String dayName;
}

enum MonthName {
  january("January"),
  february("February"),
  march("March"),
  april("April"),
  may("May"),
  june("June"),
  july("July"),
  august("August"),
  september("September"),
  october("October"),
  november("November"),
  december("December");

  const MonthName(this.monthName);

  final String monthName;
}

extension TimeExtention on DateTime {
  String get weekMonthDay {
    /// week starts with monday equal to one
    /// and ends with sunday  equal to 7
    final week = WeekDay.values[weekday-1].dayName.substring(0, 3);

    /// month starts with January equal to 1
    /// and ends with December  equal to 12
    final m = MonthName.values[month - 1].monthName.substring(0,3);

    return "$week, $m $day";
  }
}
