import 'hours.dart';

class Day {
  final String? datetime;
  final int? datetimeEpoch;
  final double? tempmax;
  final double? tempmin;
  final double? temp;
  final double? feelslikemax;
  final double? feelslikemin;
  final double? feelslike;
  final double? dew;
  final double? humidity;
  final double? precip;
  final double? precipprob;
  final double? precipcover;
  final List<String>? preciptype;
  final double? snow;
  final double? snowdepth;
  final double? windgust;
  final double? windspeed;
  final double? winddir;
  final double? pressure;
  final double? cloudcover;
  final double? visibility;
  final double? solarradiation;
  final double? solarenergy;
  final double? uvindex;
  final double? severerisk;
  final String? sunrise;
  final int? sunriseEpoch;
  final String? sunset;
  final int? sunsetEpoch;
  final double? moonphase;
  final String? conditions;
  final String? description;
  final String? icon;
  final List<String>? stations;
  final String? source;
  final List<Hours> hours;
  Day({
    required this.datetime,
    required this.datetimeEpoch,
    required this.tempmax,
    required this.tempmin,
    required this.temp,
    required this.feelslikemax,
    required this.feelslikemin,
    required this.feelslike,
    required this.dew,
    required this.humidity,
    required this.precip,
    required this.precipprob,
    required this.precipcover,
    required this.preciptype,
    required this.snow,
    required this.snowdepth,
    required this.windgust,
    required this.windspeed,
    required this.winddir,
    required this.pressure,
    required this.cloudcover,
    required this.visibility,
    required this.solarradiation,
    required this.solarenergy,
    required this.uvindex,
    required this.severerisk,
    required this.sunrise,
    required this.sunriseEpoch,
    required this.sunset,
    required this.sunsetEpoch,
    required this.moonphase,
    required this.conditions,
    required this.description,
    required this.icon,
    required this.stations,
    required this.source,
    required this.hours,
  });


  factory Day.fromJson(Map<String, Object?> map) {
    return Day(
      datetime: map['datetime'] != null ? map['datetime'] as String : null,
      datetimeEpoch: map['datetimeEpoch'] != null ? map['datetimeEpoch'] as int : null,
      tempmax: map['tempmax'] != null ? map['tempmax'] as double : null,
      tempmin: map['tempmin'] != null ? map['tempmin'] as double : null,
      temp: map['temp'] != null ? map['temp'] as double : null,
      feelslikemax: map['feelslikemax'] != null ? map['feelslikemax'] as double : null,
      feelslikemin: map['feelslikemin'] != null ? map['feelslikemin'] as double : null,
      feelslike: map['feelslike'] != null ? map['feelslike'] as double : null,
      dew: map['dew'] != null ? map['dew'] as double : null,
      humidity: map['humidity'] != null ? map['humidity'] as double : null,
      precip: map['precip'] != null ? map['precip'] as double : null,
      precipprob: map['precipprob'] != null ? map['precipprob'] as double : null,
      precipcover: map['precipcover'] != null ? map['precipcover'] as double : null,
      preciptype: map['preciptype'] != null ? List.from((map['preciptype'] as List)) : null,
      snow: map['snow'] != null ? map['snow'] as double : null,
      snowdepth: map['snowdepth'] != null ? map['snowdepth'] as double : null,
      windgust: map['windgust'] != null ? map['windgust'] as double : null,
      windspeed: map['windspeed'] != null ? map['windspeed'] as double : null,
      winddir: map['winddir'] != null ? map['winddir'] as double : null,
      pressure: map['pressure'] != null ? map['pressure'] as double : null,
      cloudcover: map['cloudcover'] != null ? map['cloudcover'] as double : null,
      visibility: map['visibility'] != null ? map['visibility'] as double : null,
      solarradiation: map['solarradiation'] != null ? map['solarradiation'] as double : null,
      solarenergy: map['solarenergy'] != null ? map['solarenergy'] as double : null,
      uvindex: map['uvindex'] != null ? map['uvindex'] as double : null,
      severerisk: map['severerisk'] != null ? map['severerisk'] as double : null,
      sunrise: map['sunrise'] != null ? map['sunrise'] as String : null,
      sunriseEpoch: map['sunriseEpoch'] != null ? map['sunriseEpoch'] as int : null,
      sunset: map['sunset'] != null ? map['sunset'] as String : null,
      sunsetEpoch: map['sunsetEpoch'] != null ? map['sunsetEpoch'] as int : null,
      moonphase: map['moonphase'] != null ? map['moonphase'] as double : null,
      conditions: map['conditions'] != null ? map['conditions'] as String : null,
      description: map['description'] != null ? map['description'] as String : null,
      icon: map['icon'] != null ? map['icon'] as String : null,
      stations: map['stations'] != null ? List.from((map['stations'] as List)) : null,
      source: map['source'] != null ? map['source'] as String : null,
      hours: map['hours'] != null ? List<Map<String, Object?>>
          .from(map['hours'] as List<Object?>)
          .map(Hours.fromJson).toList() :
          <Hours>[],
    );


  }

  @override
  String toString() {
    return 'Day('
        'datetime: $datetime, '
        'datetimeEpoch: $datetimeEpoch, '
        'tempmax: $tempmax, '
        'tempmin: $tempmin, '
        'temp: $temp, '
        'feelslikemax: $feelslikemax, '
        'feelslikemin: $feelslikemin, '
        'feelslike: $feelslike, '
        'dew: $dew, '
        'humidity: $humidity, '
        'precip: $precip, '
        'precipprob: $precipprob, '
        'precipcover: $precipcover, '
        'preciptype: $preciptype, '
        'snow: $snow, '
        'snowdepth: $snowdepth, '
        'windgust: $windgust, '
        'windspeed: $windspeed, '
        'winddir: $winddir, '
        'pressure: $pressure, '
        'cloudcover: $cloudcover, '
        'visibility: $visibility, '
        'solarradiation: $solarradiation, '
        'solarenergy: $solarenergy, '
        'uvindex: $uvindex, '
        'severerisk: $severerisk, '
        'sunrise: $sunrise, '
        'sunriseEpoch: $sunriseEpoch, '
        'sunset: $sunset, '
        'sunsetEpoch: $sunsetEpoch, '
        'moonphase: $moonphase, '
        'conditions: $conditions, '
        'description: $description, '
        'icon: $icon, '
        'stations: $stations, '
        'source: $source, '
        'hours: $hours)';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Day &&
          runtimeType == other.runtimeType &&
          datetime == other.datetime &&
          datetimeEpoch == other.datetimeEpoch &&
          tempmax == other.tempmax &&
          tempmin == other.tempmin &&
          temp == other.temp &&
          feelslikemax == other.feelslikemax &&
          feelslikemin == other.feelslikemin &&
          feelslike == other.feelslike &&
          dew == other.dew &&
          humidity == other.humidity &&
          precip == other.precip &&
          precipprob == other.precipprob &&
          precipcover == other.precipcover &&
          preciptype == other.preciptype &&
          snow == other.snow &&
          snowdepth == other.snowdepth &&
          windgust == other.windgust &&
          windspeed == other.windspeed &&
          winddir == other.winddir &&
          pressure == other.pressure &&
          cloudcover == other.cloudcover &&
          visibility == other.visibility &&
          solarradiation == other.solarradiation &&
          solarenergy == other.solarenergy &&
          uvindex == other.uvindex &&
          severerisk == other.severerisk &&
          sunrise == other.sunrise &&
          sunriseEpoch == other.sunriseEpoch &&
          sunset == other.sunset &&
          sunsetEpoch == other.sunsetEpoch &&
          moonphase == other.moonphase &&
          conditions == other.conditions &&
          description == other.description &&
          icon == other.icon &&
          stations == other.stations &&
          source == other.source &&
          hours == other.hours;

  @override
  int get hashCode =>
      datetime.hashCode ^
      datetimeEpoch.hashCode ^
      tempmax.hashCode ^
      tempmin.hashCode ^
      temp.hashCode ^
      feelslikemax.hashCode ^
      feelslikemin.hashCode ^
      feelslike.hashCode ^
      dew.hashCode ^
      humidity.hashCode ^
      precip.hashCode ^
      precipprob.hashCode ^
      precipcover.hashCode ^
      preciptype.hashCode ^
      snow.hashCode ^
      snowdepth.hashCode ^
      windgust.hashCode ^
      windspeed.hashCode ^
      winddir.hashCode ^
      pressure.hashCode ^
      cloudcover.hashCode ^
      visibility.hashCode ^
      solarradiation.hashCode ^
      solarenergy.hashCode ^
      uvindex.hashCode ^
      severerisk.hashCode ^
      sunrise.hashCode ^
      sunriseEpoch.hashCode ^
      sunset.hashCode ^
      sunsetEpoch.hashCode ^
      moonphase.hashCode ^
      conditions.hashCode ^
      description.hashCode ^
      icon.hashCode ^
      stations.hashCode ^
      source.hashCode ^
      hours.hashCode;
}
