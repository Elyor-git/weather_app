import 'current_conditions.dart';
import 'day.dart';

class WeatherModel {
  final int? queryCost;
  final double? latitude;
  final double? longitude;
  final String? resolvedAddress;
  final String? address;
  final String? timezone;
  final double? tzoffset;
  final String? description;
  final List<Day> days;
  final List alerts;
  final CurrentConditions? currentConditions;

  const WeatherModel({
    required this.queryCost,
    required this.latitude,
    required this.longitude,
    required this.resolvedAddress,
    required this.address,
    required this.timezone,
    required this.tzoffset,
    required this.description,
    required this.days,
    required this.alerts,
    required this.currentConditions,
  });

  factory WeatherModel.fromJson(Map<String, Object?> json) {
    return WeatherModel(
      queryCost: json["queryCost"] != null ? json["queryCost"] as int : null,
      latitude: json["latitude"] != null ? json["latitude"] as double : null,
      longitude: json["longitude"] != null ? json["longitude"] as double : null,
      resolvedAddress: json["resolvedAddress"] != null
          ? json["resolvedAddress"] as String
          : null,
      address: json["address"] != null ? json["address"] as String : null,
      timezone: json["timezone"] != null ? json["timezone"] as String : null,
      tzoffset: json["tzoffset"] != null ? json["tzoffset"] as double : null,
      description:
          json["description"] != null ? json["description"] as String : null,
      days: (json["days"] as List).map((e) => Day.fromJson(e)).toList(),
      alerts: json["alerts"] as List,
      currentConditions: json["currentConditions"] != null
          ? CurrentConditions.fromJson(
              json["currentConditions"] as Map<String, Object?>)
          : null,
    );
  }

  @override
  String toString() => 'WeatherModel('
      'queryCost: $queryCost,'
      'latitude: $latitude, '
      'longitude: $longitude, '
      'resolvedAddress: $resolvedAddress, '
      'address: $address, '
      'timezone: $timezone, '
      'tzoffset: $tzoffset, '
      'description: $description, '
      'days: $days, '
      'alerts: $alerts, '
      'currentConditions: $currentConditions)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherModel &&
          runtimeType == other.runtimeType &&
          queryCost == other.queryCost &&
          latitude == other.latitude &&
          longitude == other.longitude &&
          resolvedAddress == other.resolvedAddress &&
          address == other.address &&
          timezone == other.timezone &&
          tzoffset == other.tzoffset &&
          description == other.description &&
          days == other.days &&
          alerts == other.alerts &&
          currentConditions == other.currentConditions;

  @override
  int get hashCode =>
      queryCost.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      resolvedAddress.hashCode ^
      address.hashCode ^
      timezone.hashCode ^
      tzoffset.hashCode ^
      description.hashCode ^
      days.hashCode ^
      alerts.hashCode ^
      currentConditions.hashCode;
}
