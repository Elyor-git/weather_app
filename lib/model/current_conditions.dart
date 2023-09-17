class CurrentConditions {
  final String? datetime;
  final int? datetimeEpoch;
  final double? temp;
  final double? feelslike;
  final double? humidity;
  final double? dew;
  final double? precip;
  final double? precipprob;
  final double? snow;
  final double? snowdepth;
  final double? preciptype;
  final double? windgust;
  final double? windspeed;
  final double? winddir;
  final double? pressure;
  final double? visibility;
  final double? cloudcover;
  final double? solarradiation;
  final double? solarenergy;
  final double? uvindex;
  final String? conditions;
  final String? icon;
  final List<String>? stations;
  final String? source;
  final String? sunrise;
  final int? sunriseEpoch;
  final String? sunset;
  final int? sunsetEpoch;
  final double? moonphase;

  CurrentConditions({
    required this.datetime,
    required this.datetimeEpoch,
    required this.temp,
    required this.feelslike,
    required this.humidity,
    required this.dew,
    required this.precip,
    required this.precipprob,
    required this.snow,
    required this.snowdepth,
    required this.preciptype,
    required this.windgust,
    required this.windspeed,
    required this.winddir,
    required this.pressure,
    required this.visibility,
    required this.cloudcover,
    required this.solarradiation,
    required this.solarenergy,
    required this.uvindex,
    required this.conditions,
    required this.icon,
    required this.stations,
    required this.source,
    required this.sunrise,
    required this.sunriseEpoch,
    required this.sunset,
    required this.sunsetEpoch,
    required this.moonphase,
  });



  factory CurrentConditions.fromJson(Map<String, Object?> map) {
    return CurrentConditions(
      datetime: map['datetime'] != null ? map['datetime'] as String : null,
      datetimeEpoch: map['datetimeEpoch'] != null ? map['datetimeEpoch'] as int : null,
      temp: map['temp'] != null ? map['temp'] as double : null,
      feelslike: map['feelslike'] != null ? map['feelslike'] as double : null,
      humidity: map['humidity'] != null ? map['humidity'] as double : null,
      dew: map['dew'] != null ? map['dew'] as double : null,
      precip: map['precip'] != null ? map['precip'] as double : null,
      precipprob: map['precipprob'] != null ? map['precipprob'] as double : null,
      snow: map['snow'] != null ? map['snow'] as double : null,
      snowdepth: map['snowdepth'] != null ? map['snowdepth'] as double : null,
      preciptype: map['preciptype'] != null ? map['preciptype'] as double : null,
      windgust: map['windgust'] != null ? map['windgust'] as double : null,
      windspeed: map['windspeed'] != null ? map['windspeed'] as double : null,
      winddir: map['winddir'] != null ? map['winddir'] as double : null,
      pressure: map['pressure'] != null ? map['pressure'] as double : null,
      visibility: map['visibility'] != null ? map['visibility'] as double : null,
      cloudcover: map['cloudcover'] != null ? map['cloudcover'] as double : null,
      solarradiation: map['solarradiation'] != null ? map['solarradiation'] as double : null,
      solarenergy: map['solarenergy'] != null ? map['solarenergy'] as double : null,
      uvindex: map['uvindex'] != null ? map['uvindex'] as double : null,
      conditions: map['conditions'] != null ? map['conditions'] as String : null,
      icon: map['icon'] != null ? map['icon'] as String : null,
      stations: map['stations'] != null ? List.from((map['stations'] as List)) : null,
      source: map['source'] != null ? map['source'] as String : null,
      sunrise: map['sunrise'] != null ? map['sunrise'] as String : null,
      sunriseEpoch: map['sunriseEpoch'] != null ? map['sunriseEpoch'] as int : null,
      sunset: map['sunset'] != null ? map['sunset'] as String : null,
      sunsetEpoch: map['sunsetEpoch'] != null ? map['sunsetEpoch'] as int : null,
      moonphase: map['moonphase'] != null ? map['moonphase'] as double : null,
    );
  }


  @override
  String toString() => 'CurrentConditions('
      'datetime: $datetime,'
      'datetimeEpoch: $datetimeEpoch,'
      'temp: $temp, '
      'feelslike: $feelslike,'
      'humidity: $humidity, '
      'dew: $dew, '
      'precip: $precip, '
      'precipprob: $precipprob,'
      'snow: $snow,'
      'snowdepth: $snowdepth,'
      'preciptype: $preciptype,'
      'windgust: $windgust,'
      'windspeed: $windspeed,'
      'winddir: $winddir,'
      'pressure: $pressure, '
      'visibility: $visibility, '
      'cloudcover: $cloudcover, '
      'solarradiation: $solarradiation, '
      'solarenergy: $solarenergy,'
      'uvindex: $uvindex, '
      'conditions: $conditions, '
      'icon: $icon, '
      'stations: $stations, '
      'source: $source, '
      'sunrise: $sunrise, '
      'sunriseEpoch: $sunriseEpoch, '
      'sunset: $sunset, '
      'sunsetEpoch: $sunsetEpoch, '
      'moonphase: $moonphase)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is CurrentConditions &&
              runtimeType == other.runtimeType &&
              datetime == other.datetime &&
              datetimeEpoch == other.datetimeEpoch &&
              temp == other.temp &&
              feelslike == other.feelslike &&
              humidity == other.humidity &&
              dew == other.dew &&
              precip == other.precip &&
              precipprob == other.precipprob &&
              snow == other.snow &&
              snowdepth == other.snowdepth &&
              preciptype == other.preciptype &&
              windgust == other.windgust &&
              windspeed == other.windspeed &&
              winddir == other.winddir &&
              pressure == other.pressure &&
              visibility == other.visibility &&
              cloudcover == other.cloudcover &&
              solarradiation == other.solarradiation &&
              solarenergy == other.solarenergy &&
              uvindex == other.uvindex &&
              conditions == other.conditions &&
              icon == other.icon &&
              stations == other.stations &&
              source == other.source &&
              sunrise == other.sunrise &&
              sunriseEpoch == other.sunriseEpoch &&
              sunset == other.sunset &&
              sunsetEpoch == other.sunsetEpoch &&
              moonphase == other.moonphase;

  @override
  int get hashCode =>
      datetime.hashCode ^
      datetimeEpoch.hashCode ^
      temp.hashCode ^
      feelslike.hashCode ^
      humidity.hashCode ^
      dew.hashCode ^
      precip.hashCode ^
      precipprob.hashCode ^
      snow.hashCode ^
      snowdepth.hashCode ^
      preciptype.hashCode ^
      windgust.hashCode ^
      windspeed.hashCode ^
      winddir.hashCode ^
      pressure.hashCode ^
      visibility.hashCode ^
      cloudcover.hashCode ^
      solarradiation.hashCode ^
      solarenergy.hashCode ^
      uvindex.hashCode ^
      conditions.hashCode ^
      icon.hashCode ^
      stations.hashCode ^
      source.hashCode ^
      sunrise.hashCode ^
      sunriseEpoch.hashCode ^
      sunset.hashCode ^
      sunsetEpoch.hashCode ^
      moonphase.hashCode;



}
