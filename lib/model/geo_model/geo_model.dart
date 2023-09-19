class ApiGeoLocation {
  final String? ip;
  final String? continent_code;
  final String? continent_name;
  final String? country_code2;
  final String? country_code3;
  final String? country_name;
  final String? country_capital;
  final String? state_prov;
  final String? state_code;
  final String? district;
  final String? city;
  final String? zipcode;
  final String? latitude;
  final String? longitude;
  final bool is_eu;
  final String? calling_code;
  final String? country_tld;
  final String? languages;
  final String? country_flag;
  final String? geoname_id;
  final String? isp;
  final String? connection_type;
  final String? organization;
  final CurrencyModel? currency;
  final TimeZone? time_zone;

  const ApiGeoLocation({
    required this.ip,
    required this.continent_code,
    required this.continent_name,
    required this.country_code2,
    required this.country_code3,
    required this.country_name,
    required this.country_capital,
    required this.state_prov,
    required this.state_code,
    required this.district,
    required this.city,
    required this.zipcode,
    required this.latitude,
    required this.longitude,
    required this.is_eu,
    required this.calling_code,
    required this.country_tld,
    required this.languages,
    required this.country_flag,
    required this.geoname_id,
    required this.isp,
    required this.connection_type,
    required this.organization,
    required this.currency,
    required this.time_zone,
  });

  factory ApiGeoLocation.fromJson(Map<String, Object?> json) => ApiGeoLocation(
    ip: json["ip"] as String?,
    continent_code: json["continent_code"] as String?,
    continent_name: json["continent_name"] as String?,
    country_code2: json["country_code2"] as String?,
    country_code3: json["country_code3"] as String?,
    country_name: json["country_name"] as String?,
    country_capital: json["country_capital"] as String?,
    state_prov: json["state_prov"] as String?,
    state_code: json["state_code"] as String?,
    district: json["district"] as String?,
    city: json["city"] as String?,
    zipcode: json["zipcode"] as String?,
    latitude: json["latitude"] as String?,
    longitude: json["longitude"] as String?,
    is_eu: json["is_eu"] as bool,
    calling_code: json["calling_code"] as String?,
    country_tld: json["country_tld"] as String?,
    languages: json["languages"] as String?,
    country_flag: json["country_flag"] as String?,
    geoname_id: json["geoname_id"] as String?,
    isp: json["isp"] as String?,
    connection_type: json["connection_type"] as String?,
    organization: json["organization"] as String?,
    currency: CurrencyModel.fromJson(json["currency"] as Map<String, Object?>),
    time_zone: TimeZone.fromJson(json["time_zone"] as Map<String, Object?>),
  );


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiGeoLocation &&
          runtimeType == other.runtimeType &&
          ip == other.ip &&
          continent_code == other.continent_code &&
          continent_name == other.continent_name &&
          country_code2 == other.country_code2 &&
          country_code3 == other.country_code3 &&
          country_name == other.country_name &&
          country_capital == other.country_capital &&
          state_prov == other.state_prov &&
          state_code == other.state_code &&
          district == other.district &&
          city == other.city &&
          zipcode == other.zipcode &&
          latitude == other.latitude &&
          longitude == other.longitude &&
          is_eu == other.is_eu &&
          calling_code == other.calling_code &&
          country_tld == other.country_tld &&
          languages == other.languages &&
          country_flag == other.country_flag &&
          geoname_id == other.geoname_id &&
          isp == other.isp &&
          connection_type == other.connection_type &&
          organization == other.organization &&
          currency == other.currency &&
          time_zone == other.time_zone;

  @override
  int get hashCode =>
      ip.hashCode ^
      continent_code.hashCode ^
      continent_name.hashCode ^
      country_code2.hashCode ^
      country_code3.hashCode ^
      country_name.hashCode ^
      country_capital.hashCode ^
      state_prov.hashCode ^
      state_code.hashCode ^
      district.hashCode ^
      city.hashCode ^
      zipcode.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      is_eu.hashCode ^
      calling_code.hashCode ^
      country_tld.hashCode ^
      languages.hashCode ^
      country_flag.hashCode ^
      geoname_id.hashCode ^
      isp.hashCode ^
      connection_type.hashCode ^
      organization.hashCode ^
      currency.hashCode ^
      time_zone.hashCode;

  @override
  String toString() => 'ApiGeoLocation('
      'ip: $ip, '
      'continent_code: $continent_code,'
      'continent_name: $continent_name,'
      'country_code2: $country_code2,'
      'country_code3: $country_code3,'
      'country_name: $country_name, '
      'country_capital: $country_capital,'
      'state_prov: $state_prov,'
      'state_code: $state_code,'
      'district: $district,'
      'city: $city,'
      'zipcode: $zipcode,'
      'latitude: $latitude,'
      'longitude: $longitude,'
      'is_eu: $is_eu,'
      'calling_code: $calling_code,'
      'country_tld: $country_tld,'
      'languages: $languages,'
      'country_flag: $country_flag, '
      'geoname_id: $geoname_id,'
      'isp: $isp,'
      'connection_type: $connection_type,'
      'organization: $organization, '
      'currency: $currency, '
      'time_zone: $time_zone)';
}

class TimeZone {
  final String? name;
  final int? offset;
  final int? offset_with_dst;
  final String? current_time;
  final double? current_time_unix;
  final bool? is_dst;
  final int? dst_savings;

  const TimeZone({
    required this.name,
    required this.offset,
    required this.offset_with_dst,
    required this.current_time,
    required this.current_time_unix,
    required this.is_dst,
    required this.dst_savings,
  });

  factory TimeZone.fromJson(Map<String, Object?> json) => TimeZone(
    name: json["name"] as String?,
    offset: json["offset"] as int?,
    offset_with_dst: json["offset_with_dst"] as int?,
    current_time: json["current_time"] as String?,
    current_time_unix: json["current_time_unix"] as double?,
    is_dst: json["is_dst"] as bool?,
    dst_savings: json["dst_savings"] as int?,
  );


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeZone &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          offset == other.offset &&
          offset_with_dst == other.offset_with_dst &&
          current_time == other.current_time &&
          current_time_unix == other.current_time_unix &&
          is_dst == other.is_dst &&
          dst_savings == other.dst_savings;

  @override
  int get hashCode =>
      name.hashCode ^
      offset.hashCode ^
      offset_with_dst.hashCode ^
      current_time.hashCode ^
      current_time_unix.hashCode ^
      is_dst.hashCode ^
      dst_savings.hashCode;

  @override
  String toString() => 'TimeZone('
      'name: $name,'
      'offset: $offset,'
      'offset_with_dst: $offset_with_dst,'
      'current_time: $current_time,'
      'current_time_unix: $current_time_unix,'
      'is_dst: $is_dst, '
      'dst_savings: $dst_savings)';
}

class CurrencyModel {
  const CurrencyModel({
    required this.code,
    required this.name,
    required this.symbol,
  });

  final String? code;
  final String? name;
  final String? symbol;

  factory CurrencyModel.fromJson(Map<String, Object?> json) => CurrencyModel(
    code: json["code"] as String?,
    name: json["name"] as String?,
    symbol: json["symbol"] as String?,
  );


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrencyModel &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          name == other.name &&
          symbol == other.symbol;

  @override
  int get hashCode => code.hashCode ^ name.hashCode ^ symbol.hashCode;

  @override
  String toString() => 'CurrencyModel('
      'code: $code, '
      'name: $name,'
      'symbol: $symbol)';
}
