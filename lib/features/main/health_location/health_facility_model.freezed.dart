// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_facility_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HealthFacility _$HealthFacilityFromJson(Map<String, dynamic> json) {
  return _HealthFacility.fromJson(json);
}

/// @nodoc
mixin _$HealthFacility {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "href")
  String? get href => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "active")
  String? get active => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "coordinates")
  Coordinates? get coordinates => throw _privateConstructorUsedError;
  @JsonKey(name: "identifiers")
  Identifiers? get identifiers => throw _privateConstructorUsedError;
  @JsonKey(name: "properties")
  Properties? get properties => throw _privateConstructorUsedError;

  /// Serializes this HealthFacility to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthFacility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthFacilityCopyWith<HealthFacility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthFacilityCopyWith<$Res> {
  factory $HealthFacilityCopyWith(
          HealthFacility value, $Res Function(HealthFacility) then) =
      _$HealthFacilityCopyWithImpl<$Res, HealthFacility>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "href") String? href,
      @JsonKey(name: "uuid") String? uuid,
      @JsonKey(name: "active") String? active,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "coordinates") Coordinates? coordinates,
      @JsonKey(name: "identifiers") Identifiers? identifiers,
      @JsonKey(name: "properties") Properties? properties});

  $CoordinatesCopyWith<$Res>? get coordinates;
  $IdentifiersCopyWith<$Res>? get identifiers;
  $PropertiesCopyWith<$Res>? get properties;
}

/// @nodoc
class _$HealthFacilityCopyWithImpl<$Res, $Val extends HealthFacility>
    implements $HealthFacilityCopyWith<$Res> {
  _$HealthFacilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthFacility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? href = freezed,
    Object? uuid = freezed,
    Object? active = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? coordinates = freezed,
    Object? identifiers = freezed,
    Object? properties = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      identifiers: freezed == identifiers
          ? _value.identifiers
          : identifiers // ignore: cast_nullable_to_non_nullable
              as Identifiers?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Properties?,
    ) as $Val);
  }

  /// Create a copy of HealthFacility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinatesCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $CoordinatesCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }

  /// Create a copy of HealthFacility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdentifiersCopyWith<$Res>? get identifiers {
    if (_value.identifiers == null) {
      return null;
    }

    return $IdentifiersCopyWith<$Res>(_value.identifiers!, (value) {
      return _then(_value.copyWith(identifiers: value) as $Val);
    });
  }

  /// Create a copy of HealthFacility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertiesCopyWith<$Res>? get properties {
    if (_value.properties == null) {
      return null;
    }

    return $PropertiesCopyWith<$Res>(_value.properties!, (value) {
      return _then(_value.copyWith(properties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HealthFacilityImplCopyWith<$Res>
    implements $HealthFacilityCopyWith<$Res> {
  factory _$$HealthFacilityImplCopyWith(_$HealthFacilityImpl value,
          $Res Function(_$HealthFacilityImpl) then) =
      __$$HealthFacilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "href") String? href,
      @JsonKey(name: "uuid") String? uuid,
      @JsonKey(name: "active") String? active,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "coordinates") Coordinates? coordinates,
      @JsonKey(name: "identifiers") Identifiers? identifiers,
      @JsonKey(name: "properties") Properties? properties});

  @override
  $CoordinatesCopyWith<$Res>? get coordinates;
  @override
  $IdentifiersCopyWith<$Res>? get identifiers;
  @override
  $PropertiesCopyWith<$Res>? get properties;
}

/// @nodoc
class __$$HealthFacilityImplCopyWithImpl<$Res>
    extends _$HealthFacilityCopyWithImpl<$Res, _$HealthFacilityImpl>
    implements _$$HealthFacilityImplCopyWith<$Res> {
  __$$HealthFacilityImplCopyWithImpl(
      _$HealthFacilityImpl _value, $Res Function(_$HealthFacilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthFacility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? href = freezed,
    Object? uuid = freezed,
    Object? active = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? coordinates = freezed,
    Object? identifiers = freezed,
    Object? properties = freezed,
  }) {
    return _then(_$HealthFacilityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      identifiers: freezed == identifiers
          ? _value.identifiers
          : identifiers // ignore: cast_nullable_to_non_nullable
              as Identifiers?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Properties?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthFacilityImpl implements _HealthFacility {
  const _$HealthFacilityImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "href") this.href,
      @JsonKey(name: "uuid") this.uuid,
      @JsonKey(name: "active") this.active,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "coordinates") this.coordinates,
      @JsonKey(name: "identifiers") this.identifiers,
      @JsonKey(name: "properties") this.properties});

  factory _$HealthFacilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthFacilityImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "href")
  final String? href;
  @override
  @JsonKey(name: "uuid")
  final String? uuid;
  @override
  @JsonKey(name: "active")
  final String? active;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "coordinates")
  final Coordinates? coordinates;
  @override
  @JsonKey(name: "identifiers")
  final Identifiers? identifiers;
  @override
  @JsonKey(name: "properties")
  final Properties? properties;

  @override
  String toString() {
    return 'HealthFacility(name: $name, href: $href, uuid: $uuid, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, coordinates: $coordinates, identifiers: $identifiers, properties: $properties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthFacilityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.identifiers, identifiers) ||
                other.identifiers == identifiers) &&
            (identical(other.properties, properties) ||
                other.properties == properties));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, href, uuid, active,
      createdAt, updatedAt, coordinates, identifiers, properties);

  /// Create a copy of HealthFacility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthFacilityImplCopyWith<_$HealthFacilityImpl> get copyWith =>
      __$$HealthFacilityImplCopyWithImpl<_$HealthFacilityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthFacilityImplToJson(
      this,
    );
  }
}

abstract class _HealthFacility implements HealthFacility {
  const factory _HealthFacility(
          {@JsonKey(name: "name") final String? name,
          @JsonKey(name: "href") final String? href,
          @JsonKey(name: "uuid") final String? uuid,
          @JsonKey(name: "active") final String? active,
          @JsonKey(name: "created_at") final DateTime? createdAt,
          @JsonKey(name: "updated_at") final DateTime? updatedAt,
          @JsonKey(name: "coordinates") final Coordinates? coordinates,
          @JsonKey(name: "identifiers") final Identifiers? identifiers,
          @JsonKey(name: "properties") final Properties? properties}) =
      _$HealthFacilityImpl;

  factory _HealthFacility.fromJson(Map<String, dynamic> json) =
      _$HealthFacilityImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "href")
  String? get href;
  @override
  @JsonKey(name: "uuid")
  String? get uuid;
  @override
  @JsonKey(name: "active")
  String? get active;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "coordinates")
  Coordinates? get coordinates;
  @override
  @JsonKey(name: "identifiers")
  Identifiers? get identifiers;
  @override
  @JsonKey(name: "properties")
  Properties? get properties;

  /// Create a copy of HealthFacility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthFacilityImplCopyWith<_$HealthFacilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return _Coordinates.fromJson(json);
}

/// @nodoc
mixin _$Coordinates {
  @JsonKey(name: "latitude")
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  String? get longitude => throw _privateConstructorUsedError;

  /// Serializes this Coordinates to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoordinatesCopyWith<Coordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesCopyWith<$Res> {
  factory $CoordinatesCopyWith(
          Coordinates value, $Res Function(Coordinates) then) =
      _$CoordinatesCopyWithImpl<$Res, Coordinates>;
  @useResult
  $Res call(
      {@JsonKey(name: "latitude") String? latitude,
      @JsonKey(name: "longitude") String? longitude});
}

/// @nodoc
class _$CoordinatesCopyWithImpl<$Res, $Val extends Coordinates>
    implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordinatesImplCopyWith<$Res>
    implements $CoordinatesCopyWith<$Res> {
  factory _$$CoordinatesImplCopyWith(
          _$CoordinatesImpl value, $Res Function(_$CoordinatesImpl) then) =
      __$$CoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "latitude") String? latitude,
      @JsonKey(name: "longitude") String? longitude});
}

/// @nodoc
class __$$CoordinatesImplCopyWithImpl<$Res>
    extends _$CoordinatesCopyWithImpl<$Res, _$CoordinatesImpl>
    implements _$$CoordinatesImplCopyWith<$Res> {
  __$$CoordinatesImplCopyWithImpl(
      _$CoordinatesImpl _value, $Res Function(_$CoordinatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$CoordinatesImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordinatesImpl implements _Coordinates {
  const _$CoordinatesImpl(
      {@JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude});

  factory _$CoordinatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordinatesImplFromJson(json);

  @override
  @JsonKey(name: "latitude")
  final String? latitude;
  @override
  @JsonKey(name: "longitude")
  final String? longitude;

  @override
  String toString() {
    return 'Coordinates(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinatesImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinatesImplCopyWith<_$CoordinatesImpl> get copyWith =>
      __$$CoordinatesImplCopyWithImpl<_$CoordinatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinatesImplToJson(
      this,
    );
  }
}

abstract class _Coordinates implements Coordinates {
  const factory _Coordinates(
      {@JsonKey(name: "latitude") final String? latitude,
      @JsonKey(name: "longitude") final String? longitude}) = _$CoordinatesImpl;

  factory _Coordinates.fromJson(Map<String, dynamic> json) =
      _$CoordinatesImpl.fromJson;

  @override
  @JsonKey(name: "latitude")
  String? get latitude;
  @override
  @JsonKey(name: "longitude")
  String? get longitude;

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordinatesImplCopyWith<_$CoordinatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Identifiers _$IdentifiersFromJson(Map<String, dynamic> json) {
  return _Identifiers.fromJson(json);
}

/// @nodoc
mixin _$Identifiers {
  @JsonKey(name: "iid")
  String? get iid => throw _privateConstructorUsedError;
  @JsonKey(name: "agency")
  String? get agency => throw _privateConstructorUsedError;

  /// Serializes this Identifiers to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Identifiers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdentifiersCopyWith<Identifiers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentifiersCopyWith<$Res> {
  factory $IdentifiersCopyWith(
          Identifiers value, $Res Function(Identifiers) then) =
      _$IdentifiersCopyWithImpl<$Res, Identifiers>;
  @useResult
  $Res call(
      {@JsonKey(name: "iid") String? iid,
      @JsonKey(name: "agency") String? agency});
}

/// @nodoc
class _$IdentifiersCopyWithImpl<$Res, $Val extends Identifiers>
    implements $IdentifiersCopyWith<$Res> {
  _$IdentifiersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Identifiers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iid = freezed,
    Object? agency = freezed,
  }) {
    return _then(_value.copyWith(
      iid: freezed == iid
          ? _value.iid
          : iid // ignore: cast_nullable_to_non_nullable
              as String?,
      agency: freezed == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdentifiersImplCopyWith<$Res>
    implements $IdentifiersCopyWith<$Res> {
  factory _$$IdentifiersImplCopyWith(
          _$IdentifiersImpl value, $Res Function(_$IdentifiersImpl) then) =
      __$$IdentifiersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "iid") String? iid,
      @JsonKey(name: "agency") String? agency});
}

/// @nodoc
class __$$IdentifiersImplCopyWithImpl<$Res>
    extends _$IdentifiersCopyWithImpl<$Res, _$IdentifiersImpl>
    implements _$$IdentifiersImplCopyWith<$Res> {
  __$$IdentifiersImplCopyWithImpl(
      _$IdentifiersImpl _value, $Res Function(_$IdentifiersImpl) _then)
      : super(_value, _then);

  /// Create a copy of Identifiers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iid = freezed,
    Object? agency = freezed,
  }) {
    return _then(_$IdentifiersImpl(
      iid: freezed == iid
          ? _value.iid
          : iid // ignore: cast_nullable_to_non_nullable
              as String?,
      agency: freezed == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdentifiersImpl implements _Identifiers {
  const _$IdentifiersImpl(
      {@JsonKey(name: "iid") this.iid, @JsonKey(name: "agency") this.agency});

  factory _$IdentifiersImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdentifiersImplFromJson(json);

  @override
  @JsonKey(name: "iid")
  final String? iid;
  @override
  @JsonKey(name: "agency")
  final String? agency;

  @override
  String toString() {
    return 'Identifiers(iid: $iid, agency: $agency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentifiersImpl &&
            (identical(other.iid, iid) || other.iid == iid) &&
            (identical(other.agency, agency) || other.agency == agency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, iid, agency);

  /// Create a copy of Identifiers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentifiersImplCopyWith<_$IdentifiersImpl> get copyWith =>
      __$$IdentifiersImplCopyWithImpl<_$IdentifiersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdentifiersImplToJson(
      this,
    );
  }
}

abstract class _Identifiers implements Identifiers {
  const factory _Identifiers(
      {@JsonKey(name: "iid") final String? iid,
      @JsonKey(name: "agency") final String? agency}) = _$IdentifiersImpl;

  factory _Identifiers.fromJson(Map<String, dynamic> json) =
      _$IdentifiersImpl.fromJson;

  @override
  @JsonKey(name: "iid")
  String? get iid;
  @override
  @JsonKey(name: "agency")
  String? get agency;

  /// Create a copy of Identifiers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdentifiersImplCopyWith<_$IdentifiersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Properties _$PropertiesFromJson(Map<String, dynamic> json) {
  return _Properties.fromJson(json);
}

/// @nodoc
mixin _$Properties {
  @JsonKey(name: "hfCode")
  int? get hfCode => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "Health_facility_Type")
  HealthFacilityType? get healthFacilityType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "authlevel")
  String? get authlevel => throw _privateConstructorUsedError;
  @JsonKey(name: "ftype")
  int? get ftype => throw _privateConstructorUsedError;
  @JsonKey(name: "opstatus")
  String? get opstatus => throw _privateConstructorUsedError;
  @JsonKey(name: "internet")
  String? get internet => throw _privateConstructorUsedError;
  @JsonKey(name: "ren_date")
  String? get renDate => throw _privateConstructorUsedError;
  @JsonKey(name: "sectioned")
  dynamic get sectioned => throw _privateConstructorUsedError;
  @JsonKey(name: "functional")
  int? get functional => throw _privateConstructorUsedError;
  @JsonKey(name: "icu_sectioned")
  dynamic get icuSectioned => throw _privateConstructorUsedError;
  @JsonKey(name: "icu_functional")
  dynamic get icuFunctional => throw _privateConstructorUsedError;
  @JsonKey(name: "ventilator_sectioned")
  dynamic get ventilatorSectioned => throw _privateConstructorUsedError;
  @JsonKey(name: "ventilator_functional")
  dynamic get ventilatorFunctional => throw _privateConstructorUsedError;
  @JsonKey(name: "province")
  Province? get province => throw _privateConstructorUsedError;
  @JsonKey(name: "district")
  District? get district => throw _privateConstructorUsedError;
  @JsonKey(name: "municipality")
  Municipality? get municipality => throw _privateConstructorUsedError;
  @JsonKey(name: "ward")
  int? get ward => throw _privateConstructorUsedError;
  @JsonKey(name: "estd_date")
  String? get estdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "validity")
  String? get validity => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "telephone")
  String? get telephone => throw _privateConstructorUsedError;
  @JsonKey(name: "oxygen")
  String? get oxygen => throw _privateConstructorUsedError;
  @JsonKey(name: "ambulance")
  String? get ambulance => throw _privateConstructorUsedError;
  @JsonKey(name: "concentrator")
  String? get concentrator => throw _privateConstructorUsedError;
  @JsonKey(name: "cylinder")
  String? get cylinder => throw _privateConstructorUsedError;
  @JsonKey(name: "ehs")
  String? get ehs => throw _privateConstructorUsedError;
  @JsonKey(name: "geriatrics")
  String? get geriatrics => throw _privateConstructorUsedError;
  @JsonKey(name: "insurance")
  String? get insurance => throw _privateConstructorUsedError;
  @JsonKey(name: "ocmc")
  String? get ocmc => throw _privateConstructorUsedError;
  @JsonKey(name: "pharmacy")
  String? get pharmacy => throw _privateConstructorUsedError;
  @JsonKey(name: "plant_capacity")
  String? get plantCapacity => throw _privateConstructorUsedError;
  @JsonKey(name: "ssu")
  String? get ssu => throw _privateConstructorUsedError;
  @JsonKey(name: "contact_person")
  String? get contactPerson => throw _privateConstructorUsedError;
  @JsonKey(name: "contact_person_mobile")
  String? get contactPersonMobile => throw _privateConstructorUsedError;
  @JsonKey(name: "ambulance_category")
  String? get ambulanceCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "ambulance_contact")
  String? get ambulanceContact => throw _privateConstructorUsedError;
  @JsonKey(name: "hdu_functional")
  dynamic get hduFunctional => throw _privateConstructorUsedError;
  @JsonKey(name: "hdu_sectioned")
  dynamic get hduSectioned => throw _privateConstructorUsedError;
  @JsonKey(name: "nicu_functional")
  dynamic get nicuFunctional => throw _privateConstructorUsedError;
  @JsonKey(name: "nicu_sectioned")
  dynamic get nicuSectioned => throw _privateConstructorUsedError;
  @JsonKey(name: "org_source")
  dynamic get orgSource => throw _privateConstructorUsedError;
  @JsonKey(name: "building_cost")
  dynamic get buildingCost => throw _privateConstructorUsedError;
  @JsonKey(name: "device_cost")
  dynamic get deviceCost => throw _privateConstructorUsedError;
  @JsonKey(name: "est_income")
  dynamic get estIncome => throw _privateConstructorUsedError;
  @JsonKey(name: "loan_org")
  dynamic get loanOrg => throw _privateConstructorUsedError;
  @JsonKey(name: "other_source")
  dynamic get otherSource => throw _privateConstructorUsedError;
  @JsonKey(name: "property_source")
  dynamic get propertySource => throw _privateConstructorUsedError;
  @JsonKey(name: "workforce_cost")
  dynamic get workforceCost => throw _privateConstructorUsedError;
  @JsonKey(name: "approvedate")
  DateTime? get approvedate => throw _privateConstructorUsedError;
  @JsonKey(name: "approveby")
  String? get approveby => throw _privateConstructorUsedError;
  @JsonKey(name: "service_type")
  ServiceType? get serviceType => throw _privateConstructorUsedError;
  @JsonKey(name: "ownership")
  int? get ownership => throw _privateConstructorUsedError;
  @JsonKey(name: "ownerships")
  Ownerships? get ownerships => throw _privateConstructorUsedError;
  @JsonKey(name: "level")
  int? get level => throw _privateConstructorUsedError;
  @JsonKey(name: "health_facility_level")
  HealthFacilityLevel? get healthFacilityLevel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "oldlevel")
  int? get oldlevel => throw _privateConstructorUsedError;
  @JsonKey(name: "building_maps")
  String? get buildingMaps => throw _privateConstructorUsedError;
  @JsonKey(name: "hf_details")
  String? get hfDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "iee_certs")
  dynamic get ieeCerts => throw _privateConstructorUsedError;
  @JsonKey(name: "mem_citizenships")
  dynamic get memCitizenships => throw _privateConstructorUsedError;
  @JsonKey(name: "org_articles")
  dynamic get orgArticles => throw _privateConstructorUsedError;
  @JsonKey(name: "org_perms")
  dynamic get orgPerms => throw _privateConstructorUsedError;
  @JsonKey(name: "reg_orgs")
  dynamic get regOrgs => throw _privateConstructorUsedError;
  @JsonKey(name: "service_fees")
  dynamic get serviceFees => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_clears")
  dynamic get taxClears => throw _privateConstructorUsedError;
  @JsonKey(name: "vat_pans")
  dynamic get vatPans => throw _privateConstructorUsedError;
  @JsonKey(name: "hcode")
  dynamic get hcode => throw _privateConstructorUsedError;
  @JsonKey(name: "rtype")
  dynamic get rtype => throw _privateConstructorUsedError;

  /// Serializes this Properties to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertiesCopyWith<Properties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertiesCopyWith<$Res> {
  factory $PropertiesCopyWith(
          Properties value, $Res Function(Properties) then) =
      _$PropertiesCopyWithImpl<$Res, Properties>;
  @useResult
  $Res call(
      {@JsonKey(name: "hfCode") int? hfCode,
      @JsonKey(name: "type") int? type,
      @JsonKey(name: "Health_facility_Type")
      HealthFacilityType? healthFacilityType,
      @JsonKey(name: "authlevel") String? authlevel,
      @JsonKey(name: "ftype") int? ftype,
      @JsonKey(name: "opstatus") String? opstatus,
      @JsonKey(name: "internet") String? internet,
      @JsonKey(name: "ren_date") String? renDate,
      @JsonKey(name: "sectioned") dynamic sectioned,
      @JsonKey(name: "functional") int? functional,
      @JsonKey(name: "icu_sectioned") dynamic icuSectioned,
      @JsonKey(name: "icu_functional") dynamic icuFunctional,
      @JsonKey(name: "ventilator_sectioned") dynamic ventilatorSectioned,
      @JsonKey(name: "ventilator_functional") dynamic ventilatorFunctional,
      @JsonKey(name: "province") Province? province,
      @JsonKey(name: "district") District? district,
      @JsonKey(name: "municipality") Municipality? municipality,
      @JsonKey(name: "ward") int? ward,
      @JsonKey(name: "estd_date") String? estdDate,
      @JsonKey(name: "validity") String? validity,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "telephone") String? telephone,
      @JsonKey(name: "oxygen") String? oxygen,
      @JsonKey(name: "ambulance") String? ambulance,
      @JsonKey(name: "concentrator") String? concentrator,
      @JsonKey(name: "cylinder") String? cylinder,
      @JsonKey(name: "ehs") String? ehs,
      @JsonKey(name: "geriatrics") String? geriatrics,
      @JsonKey(name: "insurance") String? insurance,
      @JsonKey(name: "ocmc") String? ocmc,
      @JsonKey(name: "pharmacy") String? pharmacy,
      @JsonKey(name: "plant_capacity") String? plantCapacity,
      @JsonKey(name: "ssu") String? ssu,
      @JsonKey(name: "contact_person") String? contactPerson,
      @JsonKey(name: "contact_person_mobile") String? contactPersonMobile,
      @JsonKey(name: "ambulance_category") String? ambulanceCategory,
      @JsonKey(name: "ambulance_contact") String? ambulanceContact,
      @JsonKey(name: "hdu_functional") dynamic hduFunctional,
      @JsonKey(name: "hdu_sectioned") dynamic hduSectioned,
      @JsonKey(name: "nicu_functional") dynamic nicuFunctional,
      @JsonKey(name: "nicu_sectioned") dynamic nicuSectioned,
      @JsonKey(name: "org_source") dynamic orgSource,
      @JsonKey(name: "building_cost") dynamic buildingCost,
      @JsonKey(name: "device_cost") dynamic deviceCost,
      @JsonKey(name: "est_income") dynamic estIncome,
      @JsonKey(name: "loan_org") dynamic loanOrg,
      @JsonKey(name: "other_source") dynamic otherSource,
      @JsonKey(name: "property_source") dynamic propertySource,
      @JsonKey(name: "workforce_cost") dynamic workforceCost,
      @JsonKey(name: "approvedate") DateTime? approvedate,
      @JsonKey(name: "approveby") String? approveby,
      @JsonKey(name: "service_type") ServiceType? serviceType,
      @JsonKey(name: "ownership") int? ownership,
      @JsonKey(name: "ownerships") Ownerships? ownerships,
      @JsonKey(name: "level") int? level,
      @JsonKey(name: "health_facility_level")
      HealthFacilityLevel? healthFacilityLevel,
      @JsonKey(name: "oldlevel") int? oldlevel,
      @JsonKey(name: "building_maps") String? buildingMaps,
      @JsonKey(name: "hf_details") String? hfDetails,
      @JsonKey(name: "iee_certs") dynamic ieeCerts,
      @JsonKey(name: "mem_citizenships") dynamic memCitizenships,
      @JsonKey(name: "org_articles") dynamic orgArticles,
      @JsonKey(name: "org_perms") dynamic orgPerms,
      @JsonKey(name: "reg_orgs") dynamic regOrgs,
      @JsonKey(name: "service_fees") dynamic serviceFees,
      @JsonKey(name: "tax_clears") dynamic taxClears,
      @JsonKey(name: "vat_pans") dynamic vatPans,
      @JsonKey(name: "hcode") dynamic hcode,
      @JsonKey(name: "rtype") dynamic rtype});

  $HealthFacilityTypeCopyWith<$Res>? get healthFacilityType;
  $ProvinceCopyWith<$Res>? get province;
  $DistrictCopyWith<$Res>? get district;
  $MunicipalityCopyWith<$Res>? get municipality;
  $ServiceTypeCopyWith<$Res>? get serviceType;
  $OwnershipsCopyWith<$Res>? get ownerships;
  $HealthFacilityLevelCopyWith<$Res>? get healthFacilityLevel;
}

/// @nodoc
class _$PropertiesCopyWithImpl<$Res, $Val extends Properties>
    implements $PropertiesCopyWith<$Res> {
  _$PropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hfCode = freezed,
    Object? type = freezed,
    Object? healthFacilityType = freezed,
    Object? authlevel = freezed,
    Object? ftype = freezed,
    Object? opstatus = freezed,
    Object? internet = freezed,
    Object? renDate = freezed,
    Object? sectioned = freezed,
    Object? functional = freezed,
    Object? icuSectioned = freezed,
    Object? icuFunctional = freezed,
    Object? ventilatorSectioned = freezed,
    Object? ventilatorFunctional = freezed,
    Object? province = freezed,
    Object? district = freezed,
    Object? municipality = freezed,
    Object? ward = freezed,
    Object? estdDate = freezed,
    Object? validity = freezed,
    Object? email = freezed,
    Object? telephone = freezed,
    Object? oxygen = freezed,
    Object? ambulance = freezed,
    Object? concentrator = freezed,
    Object? cylinder = freezed,
    Object? ehs = freezed,
    Object? geriatrics = freezed,
    Object? insurance = freezed,
    Object? ocmc = freezed,
    Object? pharmacy = freezed,
    Object? plantCapacity = freezed,
    Object? ssu = freezed,
    Object? contactPerson = freezed,
    Object? contactPersonMobile = freezed,
    Object? ambulanceCategory = freezed,
    Object? ambulanceContact = freezed,
    Object? hduFunctional = freezed,
    Object? hduSectioned = freezed,
    Object? nicuFunctional = freezed,
    Object? nicuSectioned = freezed,
    Object? orgSource = freezed,
    Object? buildingCost = freezed,
    Object? deviceCost = freezed,
    Object? estIncome = freezed,
    Object? loanOrg = freezed,
    Object? otherSource = freezed,
    Object? propertySource = freezed,
    Object? workforceCost = freezed,
    Object? approvedate = freezed,
    Object? approveby = freezed,
    Object? serviceType = freezed,
    Object? ownership = freezed,
    Object? ownerships = freezed,
    Object? level = freezed,
    Object? healthFacilityLevel = freezed,
    Object? oldlevel = freezed,
    Object? buildingMaps = freezed,
    Object? hfDetails = freezed,
    Object? ieeCerts = freezed,
    Object? memCitizenships = freezed,
    Object? orgArticles = freezed,
    Object? orgPerms = freezed,
    Object? regOrgs = freezed,
    Object? serviceFees = freezed,
    Object? taxClears = freezed,
    Object? vatPans = freezed,
    Object? hcode = freezed,
    Object? rtype = freezed,
  }) {
    return _then(_value.copyWith(
      hfCode: freezed == hfCode
          ? _value.hfCode
          : hfCode // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      healthFacilityType: freezed == healthFacilityType
          ? _value.healthFacilityType
          : healthFacilityType // ignore: cast_nullable_to_non_nullable
              as HealthFacilityType?,
      authlevel: freezed == authlevel
          ? _value.authlevel
          : authlevel // ignore: cast_nullable_to_non_nullable
              as String?,
      ftype: freezed == ftype
          ? _value.ftype
          : ftype // ignore: cast_nullable_to_non_nullable
              as int?,
      opstatus: freezed == opstatus
          ? _value.opstatus
          : opstatus // ignore: cast_nullable_to_non_nullable
              as String?,
      internet: freezed == internet
          ? _value.internet
          : internet // ignore: cast_nullable_to_non_nullable
              as String?,
      renDate: freezed == renDate
          ? _value.renDate
          : renDate // ignore: cast_nullable_to_non_nullable
              as String?,
      sectioned: freezed == sectioned
          ? _value.sectioned
          : sectioned // ignore: cast_nullable_to_non_nullable
              as dynamic,
      functional: freezed == functional
          ? _value.functional
          : functional // ignore: cast_nullable_to_non_nullable
              as int?,
      icuSectioned: freezed == icuSectioned
          ? _value.icuSectioned
          : icuSectioned // ignore: cast_nullable_to_non_nullable
              as dynamic,
      icuFunctional: freezed == icuFunctional
          ? _value.icuFunctional
          : icuFunctional // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ventilatorSectioned: freezed == ventilatorSectioned
          ? _value.ventilatorSectioned
          : ventilatorSectioned // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ventilatorFunctional: freezed == ventilatorFunctional
          ? _value.ventilatorFunctional
          : ventilatorFunctional // ignore: cast_nullable_to_non_nullable
              as dynamic,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Province?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as District?,
      municipality: freezed == municipality
          ? _value.municipality
          : municipality // ignore: cast_nullable_to_non_nullable
              as Municipality?,
      ward: freezed == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as int?,
      estdDate: freezed == estdDate
          ? _value.estdDate
          : estdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      validity: freezed == validity
          ? _value.validity
          : validity // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      telephone: freezed == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String?,
      oxygen: freezed == oxygen
          ? _value.oxygen
          : oxygen // ignore: cast_nullable_to_non_nullable
              as String?,
      ambulance: freezed == ambulance
          ? _value.ambulance
          : ambulance // ignore: cast_nullable_to_non_nullable
              as String?,
      concentrator: freezed == concentrator
          ? _value.concentrator
          : concentrator // ignore: cast_nullable_to_non_nullable
              as String?,
      cylinder: freezed == cylinder
          ? _value.cylinder
          : cylinder // ignore: cast_nullable_to_non_nullable
              as String?,
      ehs: freezed == ehs
          ? _value.ehs
          : ehs // ignore: cast_nullable_to_non_nullable
              as String?,
      geriatrics: freezed == geriatrics
          ? _value.geriatrics
          : geriatrics // ignore: cast_nullable_to_non_nullable
              as String?,
      insurance: freezed == insurance
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as String?,
      ocmc: freezed == ocmc
          ? _value.ocmc
          : ocmc // ignore: cast_nullable_to_non_nullable
              as String?,
      pharmacy: freezed == pharmacy
          ? _value.pharmacy
          : pharmacy // ignore: cast_nullable_to_non_nullable
              as String?,
      plantCapacity: freezed == plantCapacity
          ? _value.plantCapacity
          : plantCapacity // ignore: cast_nullable_to_non_nullable
              as String?,
      ssu: freezed == ssu
          ? _value.ssu
          : ssu // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPersonMobile: freezed == contactPersonMobile
          ? _value.contactPersonMobile
          : contactPersonMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      ambulanceCategory: freezed == ambulanceCategory
          ? _value.ambulanceCategory
          : ambulanceCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      ambulanceContact: freezed == ambulanceContact
          ? _value.ambulanceContact
          : ambulanceContact // ignore: cast_nullable_to_non_nullable
              as String?,
      hduFunctional: freezed == hduFunctional
          ? _value.hduFunctional
          : hduFunctional // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hduSectioned: freezed == hduSectioned
          ? _value.hduSectioned
          : hduSectioned // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nicuFunctional: freezed == nicuFunctional
          ? _value.nicuFunctional
          : nicuFunctional // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nicuSectioned: freezed == nicuSectioned
          ? _value.nicuSectioned
          : nicuSectioned // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orgSource: freezed == orgSource
          ? _value.orgSource
          : orgSource // ignore: cast_nullable_to_non_nullable
              as dynamic,
      buildingCost: freezed == buildingCost
          ? _value.buildingCost
          : buildingCost // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deviceCost: freezed == deviceCost
          ? _value.deviceCost
          : deviceCost // ignore: cast_nullable_to_non_nullable
              as dynamic,
      estIncome: freezed == estIncome
          ? _value.estIncome
          : estIncome // ignore: cast_nullable_to_non_nullable
              as dynamic,
      loanOrg: freezed == loanOrg
          ? _value.loanOrg
          : loanOrg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      otherSource: freezed == otherSource
          ? _value.otherSource
          : otherSource // ignore: cast_nullable_to_non_nullable
              as dynamic,
      propertySource: freezed == propertySource
          ? _value.propertySource
          : propertySource // ignore: cast_nullable_to_non_nullable
              as dynamic,
      workforceCost: freezed == workforceCost
          ? _value.workforceCost
          : workforceCost // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approvedate: freezed == approvedate
          ? _value.approvedate
          : approvedate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approveby: freezed == approveby
          ? _value.approveby
          : approveby // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType?,
      ownership: freezed == ownership
          ? _value.ownership
          : ownership // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerships: freezed == ownerships
          ? _value.ownerships
          : ownerships // ignore: cast_nullable_to_non_nullable
              as Ownerships?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      healthFacilityLevel: freezed == healthFacilityLevel
          ? _value.healthFacilityLevel
          : healthFacilityLevel // ignore: cast_nullable_to_non_nullable
              as HealthFacilityLevel?,
      oldlevel: freezed == oldlevel
          ? _value.oldlevel
          : oldlevel // ignore: cast_nullable_to_non_nullable
              as int?,
      buildingMaps: freezed == buildingMaps
          ? _value.buildingMaps
          : buildingMaps // ignore: cast_nullable_to_non_nullable
              as String?,
      hfDetails: freezed == hfDetails
          ? _value.hfDetails
          : hfDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      ieeCerts: freezed == ieeCerts
          ? _value.ieeCerts
          : ieeCerts // ignore: cast_nullable_to_non_nullable
              as dynamic,
      memCitizenships: freezed == memCitizenships
          ? _value.memCitizenships
          : memCitizenships // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orgArticles: freezed == orgArticles
          ? _value.orgArticles
          : orgArticles // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orgPerms: freezed == orgPerms
          ? _value.orgPerms
          : orgPerms // ignore: cast_nullable_to_non_nullable
              as dynamic,
      regOrgs: freezed == regOrgs
          ? _value.regOrgs
          : regOrgs // ignore: cast_nullable_to_non_nullable
              as dynamic,
      serviceFees: freezed == serviceFees
          ? _value.serviceFees
          : serviceFees // ignore: cast_nullable_to_non_nullable
              as dynamic,
      taxClears: freezed == taxClears
          ? _value.taxClears
          : taxClears // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vatPans: freezed == vatPans
          ? _value.vatPans
          : vatPans // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hcode: freezed == hcode
          ? _value.hcode
          : hcode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rtype: freezed == rtype
          ? _value.rtype
          : rtype // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HealthFacilityTypeCopyWith<$Res>? get healthFacilityType {
    if (_value.healthFacilityType == null) {
      return null;
    }

    return $HealthFacilityTypeCopyWith<$Res>(_value.healthFacilityType!,
        (value) {
      return _then(_value.copyWith(healthFacilityType: value) as $Val);
    });
  }

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProvinceCopyWith<$Res>? get province {
    if (_value.province == null) {
      return null;
    }

    return $ProvinceCopyWith<$Res>(_value.province!, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistrictCopyWith<$Res>? get district {
    if (_value.district == null) {
      return null;
    }

    return $DistrictCopyWith<$Res>(_value.district!, (value) {
      return _then(_value.copyWith(district: value) as $Val);
    });
  }

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MunicipalityCopyWith<$Res>? get municipality {
    if (_value.municipality == null) {
      return null;
    }

    return $MunicipalityCopyWith<$Res>(_value.municipality!, (value) {
      return _then(_value.copyWith(municipality: value) as $Val);
    });
  }

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceTypeCopyWith<$Res>? get serviceType {
    if (_value.serviceType == null) {
      return null;
    }

    return $ServiceTypeCopyWith<$Res>(_value.serviceType!, (value) {
      return _then(_value.copyWith(serviceType: value) as $Val);
    });
  }

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnershipsCopyWith<$Res>? get ownerships {
    if (_value.ownerships == null) {
      return null;
    }

    return $OwnershipsCopyWith<$Res>(_value.ownerships!, (value) {
      return _then(_value.copyWith(ownerships: value) as $Val);
    });
  }

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HealthFacilityLevelCopyWith<$Res>? get healthFacilityLevel {
    if (_value.healthFacilityLevel == null) {
      return null;
    }

    return $HealthFacilityLevelCopyWith<$Res>(_value.healthFacilityLevel!,
        (value) {
      return _then(_value.copyWith(healthFacilityLevel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertiesImplCopyWith<$Res>
    implements $PropertiesCopyWith<$Res> {
  factory _$$PropertiesImplCopyWith(
          _$PropertiesImpl value, $Res Function(_$PropertiesImpl) then) =
      __$$PropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "hfCode") int? hfCode,
      @JsonKey(name: "type") int? type,
      @JsonKey(name: "Health_facility_Type")
      HealthFacilityType? healthFacilityType,
      @JsonKey(name: "authlevel") String? authlevel,
      @JsonKey(name: "ftype") int? ftype,
      @JsonKey(name: "opstatus") String? opstatus,
      @JsonKey(name: "internet") String? internet,
      @JsonKey(name: "ren_date") String? renDate,
      @JsonKey(name: "sectioned") dynamic sectioned,
      @JsonKey(name: "functional") int? functional,
      @JsonKey(name: "icu_sectioned") dynamic icuSectioned,
      @JsonKey(name: "icu_functional") dynamic icuFunctional,
      @JsonKey(name: "ventilator_sectioned") dynamic ventilatorSectioned,
      @JsonKey(name: "ventilator_functional") dynamic ventilatorFunctional,
      @JsonKey(name: "province") Province? province,
      @JsonKey(name: "district") District? district,
      @JsonKey(name: "municipality") Municipality? municipality,
      @JsonKey(name: "ward") int? ward,
      @JsonKey(name: "estd_date") String? estdDate,
      @JsonKey(name: "validity") String? validity,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "telephone") String? telephone,
      @JsonKey(name: "oxygen") String? oxygen,
      @JsonKey(name: "ambulance") String? ambulance,
      @JsonKey(name: "concentrator") String? concentrator,
      @JsonKey(name: "cylinder") String? cylinder,
      @JsonKey(name: "ehs") String? ehs,
      @JsonKey(name: "geriatrics") String? geriatrics,
      @JsonKey(name: "insurance") String? insurance,
      @JsonKey(name: "ocmc") String? ocmc,
      @JsonKey(name: "pharmacy") String? pharmacy,
      @JsonKey(name: "plant_capacity") String? plantCapacity,
      @JsonKey(name: "ssu") String? ssu,
      @JsonKey(name: "contact_person") String? contactPerson,
      @JsonKey(name: "contact_person_mobile") String? contactPersonMobile,
      @JsonKey(name: "ambulance_category") String? ambulanceCategory,
      @JsonKey(name: "ambulance_contact") String? ambulanceContact,
      @JsonKey(name: "hdu_functional") dynamic hduFunctional,
      @JsonKey(name: "hdu_sectioned") dynamic hduSectioned,
      @JsonKey(name: "nicu_functional") dynamic nicuFunctional,
      @JsonKey(name: "nicu_sectioned") dynamic nicuSectioned,
      @JsonKey(name: "org_source") dynamic orgSource,
      @JsonKey(name: "building_cost") dynamic buildingCost,
      @JsonKey(name: "device_cost") dynamic deviceCost,
      @JsonKey(name: "est_income") dynamic estIncome,
      @JsonKey(name: "loan_org") dynamic loanOrg,
      @JsonKey(name: "other_source") dynamic otherSource,
      @JsonKey(name: "property_source") dynamic propertySource,
      @JsonKey(name: "workforce_cost") dynamic workforceCost,
      @JsonKey(name: "approvedate") DateTime? approvedate,
      @JsonKey(name: "approveby") String? approveby,
      @JsonKey(name: "service_type") ServiceType? serviceType,
      @JsonKey(name: "ownership") int? ownership,
      @JsonKey(name: "ownerships") Ownerships? ownerships,
      @JsonKey(name: "level") int? level,
      @JsonKey(name: "health_facility_level")
      HealthFacilityLevel? healthFacilityLevel,
      @JsonKey(name: "oldlevel") int? oldlevel,
      @JsonKey(name: "building_maps") String? buildingMaps,
      @JsonKey(name: "hf_details") String? hfDetails,
      @JsonKey(name: "iee_certs") dynamic ieeCerts,
      @JsonKey(name: "mem_citizenships") dynamic memCitizenships,
      @JsonKey(name: "org_articles") dynamic orgArticles,
      @JsonKey(name: "org_perms") dynamic orgPerms,
      @JsonKey(name: "reg_orgs") dynamic regOrgs,
      @JsonKey(name: "service_fees") dynamic serviceFees,
      @JsonKey(name: "tax_clears") dynamic taxClears,
      @JsonKey(name: "vat_pans") dynamic vatPans,
      @JsonKey(name: "hcode") dynamic hcode,
      @JsonKey(name: "rtype") dynamic rtype});

  @override
  $HealthFacilityTypeCopyWith<$Res>? get healthFacilityType;
  @override
  $ProvinceCopyWith<$Res>? get province;
  @override
  $DistrictCopyWith<$Res>? get district;
  @override
  $MunicipalityCopyWith<$Res>? get municipality;
  @override
  $ServiceTypeCopyWith<$Res>? get serviceType;
  @override
  $OwnershipsCopyWith<$Res>? get ownerships;
  @override
  $HealthFacilityLevelCopyWith<$Res>? get healthFacilityLevel;
}

/// @nodoc
class __$$PropertiesImplCopyWithImpl<$Res>
    extends _$PropertiesCopyWithImpl<$Res, _$PropertiesImpl>
    implements _$$PropertiesImplCopyWith<$Res> {
  __$$PropertiesImplCopyWithImpl(
      _$PropertiesImpl _value, $Res Function(_$PropertiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hfCode = freezed,
    Object? type = freezed,
    Object? healthFacilityType = freezed,
    Object? authlevel = freezed,
    Object? ftype = freezed,
    Object? opstatus = freezed,
    Object? internet = freezed,
    Object? renDate = freezed,
    Object? sectioned = freezed,
    Object? functional = freezed,
    Object? icuSectioned = freezed,
    Object? icuFunctional = freezed,
    Object? ventilatorSectioned = freezed,
    Object? ventilatorFunctional = freezed,
    Object? province = freezed,
    Object? district = freezed,
    Object? municipality = freezed,
    Object? ward = freezed,
    Object? estdDate = freezed,
    Object? validity = freezed,
    Object? email = freezed,
    Object? telephone = freezed,
    Object? oxygen = freezed,
    Object? ambulance = freezed,
    Object? concentrator = freezed,
    Object? cylinder = freezed,
    Object? ehs = freezed,
    Object? geriatrics = freezed,
    Object? insurance = freezed,
    Object? ocmc = freezed,
    Object? pharmacy = freezed,
    Object? plantCapacity = freezed,
    Object? ssu = freezed,
    Object? contactPerson = freezed,
    Object? contactPersonMobile = freezed,
    Object? ambulanceCategory = freezed,
    Object? ambulanceContact = freezed,
    Object? hduFunctional = freezed,
    Object? hduSectioned = freezed,
    Object? nicuFunctional = freezed,
    Object? nicuSectioned = freezed,
    Object? orgSource = freezed,
    Object? buildingCost = freezed,
    Object? deviceCost = freezed,
    Object? estIncome = freezed,
    Object? loanOrg = freezed,
    Object? otherSource = freezed,
    Object? propertySource = freezed,
    Object? workforceCost = freezed,
    Object? approvedate = freezed,
    Object? approveby = freezed,
    Object? serviceType = freezed,
    Object? ownership = freezed,
    Object? ownerships = freezed,
    Object? level = freezed,
    Object? healthFacilityLevel = freezed,
    Object? oldlevel = freezed,
    Object? buildingMaps = freezed,
    Object? hfDetails = freezed,
    Object? ieeCerts = freezed,
    Object? memCitizenships = freezed,
    Object? orgArticles = freezed,
    Object? orgPerms = freezed,
    Object? regOrgs = freezed,
    Object? serviceFees = freezed,
    Object? taxClears = freezed,
    Object? vatPans = freezed,
    Object? hcode = freezed,
    Object? rtype = freezed,
  }) {
    return _then(_$PropertiesImpl(
      hfCode: freezed == hfCode
          ? _value.hfCode
          : hfCode // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      healthFacilityType: freezed == healthFacilityType
          ? _value.healthFacilityType
          : healthFacilityType // ignore: cast_nullable_to_non_nullable
              as HealthFacilityType?,
      authlevel: freezed == authlevel
          ? _value.authlevel
          : authlevel // ignore: cast_nullable_to_non_nullable
              as String?,
      ftype: freezed == ftype
          ? _value.ftype
          : ftype // ignore: cast_nullable_to_non_nullable
              as int?,
      opstatus: freezed == opstatus
          ? _value.opstatus
          : opstatus // ignore: cast_nullable_to_non_nullable
              as String?,
      internet: freezed == internet
          ? _value.internet
          : internet // ignore: cast_nullable_to_non_nullable
              as String?,
      renDate: freezed == renDate
          ? _value.renDate
          : renDate // ignore: cast_nullable_to_non_nullable
              as String?,
      sectioned: freezed == sectioned
          ? _value.sectioned
          : sectioned // ignore: cast_nullable_to_non_nullable
              as dynamic,
      functional: freezed == functional
          ? _value.functional
          : functional // ignore: cast_nullable_to_non_nullable
              as int?,
      icuSectioned: freezed == icuSectioned
          ? _value.icuSectioned
          : icuSectioned // ignore: cast_nullable_to_non_nullable
              as dynamic,
      icuFunctional: freezed == icuFunctional
          ? _value.icuFunctional
          : icuFunctional // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ventilatorSectioned: freezed == ventilatorSectioned
          ? _value.ventilatorSectioned
          : ventilatorSectioned // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ventilatorFunctional: freezed == ventilatorFunctional
          ? _value.ventilatorFunctional
          : ventilatorFunctional // ignore: cast_nullable_to_non_nullable
              as dynamic,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Province?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as District?,
      municipality: freezed == municipality
          ? _value.municipality
          : municipality // ignore: cast_nullable_to_non_nullable
              as Municipality?,
      ward: freezed == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as int?,
      estdDate: freezed == estdDate
          ? _value.estdDate
          : estdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      validity: freezed == validity
          ? _value.validity
          : validity // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      telephone: freezed == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String?,
      oxygen: freezed == oxygen
          ? _value.oxygen
          : oxygen // ignore: cast_nullable_to_non_nullable
              as String?,
      ambulance: freezed == ambulance
          ? _value.ambulance
          : ambulance // ignore: cast_nullable_to_non_nullable
              as String?,
      concentrator: freezed == concentrator
          ? _value.concentrator
          : concentrator // ignore: cast_nullable_to_non_nullable
              as String?,
      cylinder: freezed == cylinder
          ? _value.cylinder
          : cylinder // ignore: cast_nullable_to_non_nullable
              as String?,
      ehs: freezed == ehs
          ? _value.ehs
          : ehs // ignore: cast_nullable_to_non_nullable
              as String?,
      geriatrics: freezed == geriatrics
          ? _value.geriatrics
          : geriatrics // ignore: cast_nullable_to_non_nullable
              as String?,
      insurance: freezed == insurance
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as String?,
      ocmc: freezed == ocmc
          ? _value.ocmc
          : ocmc // ignore: cast_nullable_to_non_nullable
              as String?,
      pharmacy: freezed == pharmacy
          ? _value.pharmacy
          : pharmacy // ignore: cast_nullable_to_non_nullable
              as String?,
      plantCapacity: freezed == plantCapacity
          ? _value.plantCapacity
          : plantCapacity // ignore: cast_nullable_to_non_nullable
              as String?,
      ssu: freezed == ssu
          ? _value.ssu
          : ssu // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPersonMobile: freezed == contactPersonMobile
          ? _value.contactPersonMobile
          : contactPersonMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      ambulanceCategory: freezed == ambulanceCategory
          ? _value.ambulanceCategory
          : ambulanceCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      ambulanceContact: freezed == ambulanceContact
          ? _value.ambulanceContact
          : ambulanceContact // ignore: cast_nullable_to_non_nullable
              as String?,
      hduFunctional: freezed == hduFunctional
          ? _value.hduFunctional
          : hduFunctional // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hduSectioned: freezed == hduSectioned
          ? _value.hduSectioned
          : hduSectioned // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nicuFunctional: freezed == nicuFunctional
          ? _value.nicuFunctional
          : nicuFunctional // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nicuSectioned: freezed == nicuSectioned
          ? _value.nicuSectioned
          : nicuSectioned // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orgSource: freezed == orgSource
          ? _value.orgSource
          : orgSource // ignore: cast_nullable_to_non_nullable
              as dynamic,
      buildingCost: freezed == buildingCost
          ? _value.buildingCost
          : buildingCost // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deviceCost: freezed == deviceCost
          ? _value.deviceCost
          : deviceCost // ignore: cast_nullable_to_non_nullable
              as dynamic,
      estIncome: freezed == estIncome
          ? _value.estIncome
          : estIncome // ignore: cast_nullable_to_non_nullable
              as dynamic,
      loanOrg: freezed == loanOrg
          ? _value.loanOrg
          : loanOrg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      otherSource: freezed == otherSource
          ? _value.otherSource
          : otherSource // ignore: cast_nullable_to_non_nullable
              as dynamic,
      propertySource: freezed == propertySource
          ? _value.propertySource
          : propertySource // ignore: cast_nullable_to_non_nullable
              as dynamic,
      workforceCost: freezed == workforceCost
          ? _value.workforceCost
          : workforceCost // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approvedate: freezed == approvedate
          ? _value.approvedate
          : approvedate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approveby: freezed == approveby
          ? _value.approveby
          : approveby // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType?,
      ownership: freezed == ownership
          ? _value.ownership
          : ownership // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerships: freezed == ownerships
          ? _value.ownerships
          : ownerships // ignore: cast_nullable_to_non_nullable
              as Ownerships?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      healthFacilityLevel: freezed == healthFacilityLevel
          ? _value.healthFacilityLevel
          : healthFacilityLevel // ignore: cast_nullable_to_non_nullable
              as HealthFacilityLevel?,
      oldlevel: freezed == oldlevel
          ? _value.oldlevel
          : oldlevel // ignore: cast_nullable_to_non_nullable
              as int?,
      buildingMaps: freezed == buildingMaps
          ? _value.buildingMaps
          : buildingMaps // ignore: cast_nullable_to_non_nullable
              as String?,
      hfDetails: freezed == hfDetails
          ? _value.hfDetails
          : hfDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      ieeCerts: freezed == ieeCerts
          ? _value.ieeCerts
          : ieeCerts // ignore: cast_nullable_to_non_nullable
              as dynamic,
      memCitizenships: freezed == memCitizenships
          ? _value.memCitizenships
          : memCitizenships // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orgArticles: freezed == orgArticles
          ? _value.orgArticles
          : orgArticles // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orgPerms: freezed == orgPerms
          ? _value.orgPerms
          : orgPerms // ignore: cast_nullable_to_non_nullable
              as dynamic,
      regOrgs: freezed == regOrgs
          ? _value.regOrgs
          : regOrgs // ignore: cast_nullable_to_non_nullable
              as dynamic,
      serviceFees: freezed == serviceFees
          ? _value.serviceFees
          : serviceFees // ignore: cast_nullable_to_non_nullable
              as dynamic,
      taxClears: freezed == taxClears
          ? _value.taxClears
          : taxClears // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vatPans: freezed == vatPans
          ? _value.vatPans
          : vatPans // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hcode: freezed == hcode
          ? _value.hcode
          : hcode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rtype: freezed == rtype
          ? _value.rtype
          : rtype // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertiesImpl implements _Properties {
  const _$PropertiesImpl(
      {@JsonKey(name: "hfCode") this.hfCode,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "Health_facility_Type") this.healthFacilityType,
      @JsonKey(name: "authlevel") this.authlevel,
      @JsonKey(name: "ftype") this.ftype,
      @JsonKey(name: "opstatus") this.opstatus,
      @JsonKey(name: "internet") this.internet,
      @JsonKey(name: "ren_date") this.renDate,
      @JsonKey(name: "sectioned") this.sectioned,
      @JsonKey(name: "functional") this.functional,
      @JsonKey(name: "icu_sectioned") this.icuSectioned,
      @JsonKey(name: "icu_functional") this.icuFunctional,
      @JsonKey(name: "ventilator_sectioned") this.ventilatorSectioned,
      @JsonKey(name: "ventilator_functional") this.ventilatorFunctional,
      @JsonKey(name: "province") this.province,
      @JsonKey(name: "district") this.district,
      @JsonKey(name: "municipality") this.municipality,
      @JsonKey(name: "ward") this.ward,
      @JsonKey(name: "estd_date") this.estdDate,
      @JsonKey(name: "validity") this.validity,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "telephone") this.telephone,
      @JsonKey(name: "oxygen") this.oxygen,
      @JsonKey(name: "ambulance") this.ambulance,
      @JsonKey(name: "concentrator") this.concentrator,
      @JsonKey(name: "cylinder") this.cylinder,
      @JsonKey(name: "ehs") this.ehs,
      @JsonKey(name: "geriatrics") this.geriatrics,
      @JsonKey(name: "insurance") this.insurance,
      @JsonKey(name: "ocmc") this.ocmc,
      @JsonKey(name: "pharmacy") this.pharmacy,
      @JsonKey(name: "plant_capacity") this.plantCapacity,
      @JsonKey(name: "ssu") this.ssu,
      @JsonKey(name: "contact_person") this.contactPerson,
      @JsonKey(name: "contact_person_mobile") this.contactPersonMobile,
      @JsonKey(name: "ambulance_category") this.ambulanceCategory,
      @JsonKey(name: "ambulance_contact") this.ambulanceContact,
      @JsonKey(name: "hdu_functional") this.hduFunctional,
      @JsonKey(name: "hdu_sectioned") this.hduSectioned,
      @JsonKey(name: "nicu_functional") this.nicuFunctional,
      @JsonKey(name: "nicu_sectioned") this.nicuSectioned,
      @JsonKey(name: "org_source") this.orgSource,
      @JsonKey(name: "building_cost") this.buildingCost,
      @JsonKey(name: "device_cost") this.deviceCost,
      @JsonKey(name: "est_income") this.estIncome,
      @JsonKey(name: "loan_org") this.loanOrg,
      @JsonKey(name: "other_source") this.otherSource,
      @JsonKey(name: "property_source") this.propertySource,
      @JsonKey(name: "workforce_cost") this.workforceCost,
      @JsonKey(name: "approvedate") this.approvedate,
      @JsonKey(name: "approveby") this.approveby,
      @JsonKey(name: "service_type") this.serviceType,
      @JsonKey(name: "ownership") this.ownership,
      @JsonKey(name: "ownerships") this.ownerships,
      @JsonKey(name: "level") this.level,
      @JsonKey(name: "health_facility_level") this.healthFacilityLevel,
      @JsonKey(name: "oldlevel") this.oldlevel,
      @JsonKey(name: "building_maps") this.buildingMaps,
      @JsonKey(name: "hf_details") this.hfDetails,
      @JsonKey(name: "iee_certs") this.ieeCerts,
      @JsonKey(name: "mem_citizenships") this.memCitizenships,
      @JsonKey(name: "org_articles") this.orgArticles,
      @JsonKey(name: "org_perms") this.orgPerms,
      @JsonKey(name: "reg_orgs") this.regOrgs,
      @JsonKey(name: "service_fees") this.serviceFees,
      @JsonKey(name: "tax_clears") this.taxClears,
      @JsonKey(name: "vat_pans") this.vatPans,
      @JsonKey(name: "hcode") this.hcode,
      @JsonKey(name: "rtype") this.rtype});

  factory _$PropertiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertiesImplFromJson(json);

  @override
  @JsonKey(name: "hfCode")
  final int? hfCode;
  @override
  @JsonKey(name: "type")
  final int? type;
  @override
  @JsonKey(name: "Health_facility_Type")
  final HealthFacilityType? healthFacilityType;
  @override
  @JsonKey(name: "authlevel")
  final String? authlevel;
  @override
  @JsonKey(name: "ftype")
  final int? ftype;
  @override
  @JsonKey(name: "opstatus")
  final String? opstatus;
  @override
  @JsonKey(name: "internet")
  final String? internet;
  @override
  @JsonKey(name: "ren_date")
  final String? renDate;
  @override
  @JsonKey(name: "sectioned")
  final dynamic sectioned;
  @override
  @JsonKey(name: "functional")
  final int? functional;
  @override
  @JsonKey(name: "icu_sectioned")
  final dynamic icuSectioned;
  @override
  @JsonKey(name: "icu_functional")
  final dynamic icuFunctional;
  @override
  @JsonKey(name: "ventilator_sectioned")
  final dynamic ventilatorSectioned;
  @override
  @JsonKey(name: "ventilator_functional")
  final dynamic ventilatorFunctional;
  @override
  @JsonKey(name: "province")
  final Province? province;
  @override
  @JsonKey(name: "district")
  final District? district;
  @override
  @JsonKey(name: "municipality")
  final Municipality? municipality;
  @override
  @JsonKey(name: "ward")
  final int? ward;
  @override
  @JsonKey(name: "estd_date")
  final String? estdDate;
  @override
  @JsonKey(name: "validity")
  final String? validity;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "telephone")
  final String? telephone;
  @override
  @JsonKey(name: "oxygen")
  final String? oxygen;
  @override
  @JsonKey(name: "ambulance")
  final String? ambulance;
  @override
  @JsonKey(name: "concentrator")
  final String? concentrator;
  @override
  @JsonKey(name: "cylinder")
  final String? cylinder;
  @override
  @JsonKey(name: "ehs")
  final String? ehs;
  @override
  @JsonKey(name: "geriatrics")
  final String? geriatrics;
  @override
  @JsonKey(name: "insurance")
  final String? insurance;
  @override
  @JsonKey(name: "ocmc")
  final String? ocmc;
  @override
  @JsonKey(name: "pharmacy")
  final String? pharmacy;
  @override
  @JsonKey(name: "plant_capacity")
  final String? plantCapacity;
  @override
  @JsonKey(name: "ssu")
  final String? ssu;
  @override
  @JsonKey(name: "contact_person")
  final String? contactPerson;
  @override
  @JsonKey(name: "contact_person_mobile")
  final String? contactPersonMobile;
  @override
  @JsonKey(name: "ambulance_category")
  final String? ambulanceCategory;
  @override
  @JsonKey(name: "ambulance_contact")
  final String? ambulanceContact;
  @override
  @JsonKey(name: "hdu_functional")
  final dynamic hduFunctional;
  @override
  @JsonKey(name: "hdu_sectioned")
  final dynamic hduSectioned;
  @override
  @JsonKey(name: "nicu_functional")
  final dynamic nicuFunctional;
  @override
  @JsonKey(name: "nicu_sectioned")
  final dynamic nicuSectioned;
  @override
  @JsonKey(name: "org_source")
  final dynamic orgSource;
  @override
  @JsonKey(name: "building_cost")
  final dynamic buildingCost;
  @override
  @JsonKey(name: "device_cost")
  final dynamic deviceCost;
  @override
  @JsonKey(name: "est_income")
  final dynamic estIncome;
  @override
  @JsonKey(name: "loan_org")
  final dynamic loanOrg;
  @override
  @JsonKey(name: "other_source")
  final dynamic otherSource;
  @override
  @JsonKey(name: "property_source")
  final dynamic propertySource;
  @override
  @JsonKey(name: "workforce_cost")
  final dynamic workforceCost;
  @override
  @JsonKey(name: "approvedate")
  final DateTime? approvedate;
  @override
  @JsonKey(name: "approveby")
  final String? approveby;
  @override
  @JsonKey(name: "service_type")
  final ServiceType? serviceType;
  @override
  @JsonKey(name: "ownership")
  final int? ownership;
  @override
  @JsonKey(name: "ownerships")
  final Ownerships? ownerships;
  @override
  @JsonKey(name: "level")
  final int? level;
  @override
  @JsonKey(name: "health_facility_level")
  final HealthFacilityLevel? healthFacilityLevel;
  @override
  @JsonKey(name: "oldlevel")
  final int? oldlevel;
  @override
  @JsonKey(name: "building_maps")
  final String? buildingMaps;
  @override
  @JsonKey(name: "hf_details")
  final String? hfDetails;
  @override
  @JsonKey(name: "iee_certs")
  final dynamic ieeCerts;
  @override
  @JsonKey(name: "mem_citizenships")
  final dynamic memCitizenships;
  @override
  @JsonKey(name: "org_articles")
  final dynamic orgArticles;
  @override
  @JsonKey(name: "org_perms")
  final dynamic orgPerms;
  @override
  @JsonKey(name: "reg_orgs")
  final dynamic regOrgs;
  @override
  @JsonKey(name: "service_fees")
  final dynamic serviceFees;
  @override
  @JsonKey(name: "tax_clears")
  final dynamic taxClears;
  @override
  @JsonKey(name: "vat_pans")
  final dynamic vatPans;
  @override
  @JsonKey(name: "hcode")
  final dynamic hcode;
  @override
  @JsonKey(name: "rtype")
  final dynamic rtype;

  @override
  String toString() {
    return 'Properties(hfCode: $hfCode, type: $type, healthFacilityType: $healthFacilityType, authlevel: $authlevel, ftype: $ftype, opstatus: $opstatus, internet: $internet, renDate: $renDate, sectioned: $sectioned, functional: $functional, icuSectioned: $icuSectioned, icuFunctional: $icuFunctional, ventilatorSectioned: $ventilatorSectioned, ventilatorFunctional: $ventilatorFunctional, province: $province, district: $district, municipality: $municipality, ward: $ward, estdDate: $estdDate, validity: $validity, email: $email, telephone: $telephone, oxygen: $oxygen, ambulance: $ambulance, concentrator: $concentrator, cylinder: $cylinder, ehs: $ehs, geriatrics: $geriatrics, insurance: $insurance, ocmc: $ocmc, pharmacy: $pharmacy, plantCapacity: $plantCapacity, ssu: $ssu, contactPerson: $contactPerson, contactPersonMobile: $contactPersonMobile, ambulanceCategory: $ambulanceCategory, ambulanceContact: $ambulanceContact, hduFunctional: $hduFunctional, hduSectioned: $hduSectioned, nicuFunctional: $nicuFunctional, nicuSectioned: $nicuSectioned, orgSource: $orgSource, buildingCost: $buildingCost, deviceCost: $deviceCost, estIncome: $estIncome, loanOrg: $loanOrg, otherSource: $otherSource, propertySource: $propertySource, workforceCost: $workforceCost, approvedate: $approvedate, approveby: $approveby, serviceType: $serviceType, ownership: $ownership, ownerships: $ownerships, level: $level, healthFacilityLevel: $healthFacilityLevel, oldlevel: $oldlevel, buildingMaps: $buildingMaps, hfDetails: $hfDetails, ieeCerts: $ieeCerts, memCitizenships: $memCitizenships, orgArticles: $orgArticles, orgPerms: $orgPerms, regOrgs: $regOrgs, serviceFees: $serviceFees, taxClears: $taxClears, vatPans: $vatPans, hcode: $hcode, rtype: $rtype)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertiesImpl &&
            (identical(other.hfCode, hfCode) || other.hfCode == hfCode) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.healthFacilityType, healthFacilityType) ||
                other.healthFacilityType == healthFacilityType) &&
            (identical(other.authlevel, authlevel) ||
                other.authlevel == authlevel) &&
            (identical(other.ftype, ftype) || other.ftype == ftype) &&
            (identical(other.opstatus, opstatus) ||
                other.opstatus == opstatus) &&
            (identical(other.internet, internet) ||
                other.internet == internet) &&
            (identical(other.renDate, renDate) || other.renDate == renDate) &&
            const DeepCollectionEquality().equals(other.sectioned, sectioned) &&
            (identical(other.functional, functional) ||
                other.functional == functional) &&
            const DeepCollectionEquality()
                .equals(other.icuSectioned, icuSectioned) &&
            const DeepCollectionEquality()
                .equals(other.icuFunctional, icuFunctional) &&
            const DeepCollectionEquality()
                .equals(other.ventilatorSectioned, ventilatorSectioned) &&
            const DeepCollectionEquality()
                .equals(other.ventilatorFunctional, ventilatorFunctional) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.municipality, municipality) ||
                other.municipality == municipality) &&
            (identical(other.ward, ward) || other.ward == ward) &&
            (identical(other.estdDate, estdDate) ||
                other.estdDate == estdDate) &&
            (identical(other.validity, validity) ||
                other.validity == validity) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.oxygen, oxygen) || other.oxygen == oxygen) &&
            (identical(other.ambulance, ambulance) ||
                other.ambulance == ambulance) &&
            (identical(other.concentrator, concentrator) ||
                other.concentrator == concentrator) &&
            (identical(other.cylinder, cylinder) ||
                other.cylinder == cylinder) &&
            (identical(other.ehs, ehs) || other.ehs == ehs) &&
            (identical(other.geriatrics, geriatrics) ||
                other.geriatrics == geriatrics) &&
            (identical(other.insurance, insurance) ||
                other.insurance == insurance) &&
            (identical(other.ocmc, ocmc) || other.ocmc == ocmc) &&
            (identical(other.pharmacy, pharmacy) ||
                other.pharmacy == pharmacy) &&
            (identical(other.plantCapacity, plantCapacity) ||
                other.plantCapacity == plantCapacity) &&
            (identical(other.ssu, ssu) || other.ssu == ssu) &&
            (identical(other.contactPerson, contactPerson) ||
                other.contactPerson == contactPerson) &&
            (identical(other.contactPersonMobile, contactPersonMobile) ||
                other.contactPersonMobile == contactPersonMobile) &&
            (identical(other.ambulanceCategory, ambulanceCategory) ||
                other.ambulanceCategory == ambulanceCategory) &&
            (identical(other.ambulanceContact, ambulanceContact) ||
                other.ambulanceContact == ambulanceContact) &&
            const DeepCollectionEquality()
                .equals(other.hduFunctional, hduFunctional) &&
            const DeepCollectionEquality()
                .equals(other.hduSectioned, hduSectioned) &&
            const DeepCollectionEquality()
                .equals(other.nicuFunctional, nicuFunctional) &&
            const DeepCollectionEquality()
                .equals(other.nicuSectioned, nicuSectioned) &&
            const DeepCollectionEquality().equals(other.orgSource, orgSource) &&
            const DeepCollectionEquality()
                .equals(other.buildingCost, buildingCost) &&
            const DeepCollectionEquality()
                .equals(other.deviceCost, deviceCost) &&
            const DeepCollectionEquality().equals(other.estIncome, estIncome) &&
            const DeepCollectionEquality().equals(other.loanOrg, loanOrg) &&
            const DeepCollectionEquality()
                .equals(other.otherSource, otherSource) &&
            const DeepCollectionEquality()
                .equals(other.propertySource, propertySource) &&
            const DeepCollectionEquality()
                .equals(other.workforceCost, workforceCost) &&
            (identical(other.approvedate, approvedate) ||
                other.approvedate == approvedate) &&
            (identical(other.approveby, approveby) ||
                other.approveby == approveby) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.ownership, ownership) ||
                other.ownership == ownership) &&
            (identical(other.ownerships, ownerships) ||
                other.ownerships == ownerships) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.healthFacilityLevel, healthFacilityLevel) ||
                other.healthFacilityLevel == healthFacilityLevel) &&
            (identical(other.oldlevel, oldlevel) ||
                other.oldlevel == oldlevel) &&
            (identical(other.buildingMaps, buildingMaps) ||
                other.buildingMaps == buildingMaps) &&
            (identical(other.hfDetails, hfDetails) || other.hfDetails == hfDetails) &&
            const DeepCollectionEquality().equals(other.ieeCerts, ieeCerts) &&
            const DeepCollectionEquality().equals(other.memCitizenships, memCitizenships) &&
            const DeepCollectionEquality().equals(other.orgArticles, orgArticles) &&
            const DeepCollectionEquality().equals(other.orgPerms, orgPerms) &&
            const DeepCollectionEquality().equals(other.regOrgs, regOrgs) &&
            const DeepCollectionEquality().equals(other.serviceFees, serviceFees) &&
            const DeepCollectionEquality().equals(other.taxClears, taxClears) &&
            const DeepCollectionEquality().equals(other.vatPans, vatPans) &&
            const DeepCollectionEquality().equals(other.hcode, hcode) &&
            const DeepCollectionEquality().equals(other.rtype, rtype));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        hfCode,
        type,
        healthFacilityType,
        authlevel,
        ftype,
        opstatus,
        internet,
        renDate,
        const DeepCollectionEquality().hash(sectioned),
        functional,
        const DeepCollectionEquality().hash(icuSectioned),
        const DeepCollectionEquality().hash(icuFunctional),
        const DeepCollectionEquality().hash(ventilatorSectioned),
        const DeepCollectionEquality().hash(ventilatorFunctional),
        province,
        district,
        municipality,
        ward,
        estdDate,
        validity,
        email,
        telephone,
        oxygen,
        ambulance,
        concentrator,
        cylinder,
        ehs,
        geriatrics,
        insurance,
        ocmc,
        pharmacy,
        plantCapacity,
        ssu,
        contactPerson,
        contactPersonMobile,
        ambulanceCategory,
        ambulanceContact,
        const DeepCollectionEquality().hash(hduFunctional),
        const DeepCollectionEquality().hash(hduSectioned),
        const DeepCollectionEquality().hash(nicuFunctional),
        const DeepCollectionEquality().hash(nicuSectioned),
        const DeepCollectionEquality().hash(orgSource),
        const DeepCollectionEquality().hash(buildingCost),
        const DeepCollectionEquality().hash(deviceCost),
        const DeepCollectionEquality().hash(estIncome),
        const DeepCollectionEquality().hash(loanOrg),
        const DeepCollectionEquality().hash(otherSource),
        const DeepCollectionEquality().hash(propertySource),
        const DeepCollectionEquality().hash(workforceCost),
        approvedate,
        approveby,
        serviceType,
        ownership,
        ownerships,
        level,
        healthFacilityLevel,
        oldlevel,
        buildingMaps,
        hfDetails,
        const DeepCollectionEquality().hash(ieeCerts),
        const DeepCollectionEquality().hash(memCitizenships),
        const DeepCollectionEquality().hash(orgArticles),
        const DeepCollectionEquality().hash(orgPerms),
        const DeepCollectionEquality().hash(regOrgs),
        const DeepCollectionEquality().hash(serviceFees),
        const DeepCollectionEquality().hash(taxClears),
        const DeepCollectionEquality().hash(vatPans),
        const DeepCollectionEquality().hash(hcode),
        const DeepCollectionEquality().hash(rtype)
      ]);

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertiesImplCopyWith<_$PropertiesImpl> get copyWith =>
      __$$PropertiesImplCopyWithImpl<_$PropertiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertiesImplToJson(
      this,
    );
  }
}

abstract class _Properties implements Properties {
  const factory _Properties(
      {@JsonKey(name: "hfCode") final int? hfCode,
      @JsonKey(name: "type") final int? type,
      @JsonKey(name: "Health_facility_Type")
      final HealthFacilityType? healthFacilityType,
      @JsonKey(name: "authlevel") final String? authlevel,
      @JsonKey(name: "ftype") final int? ftype,
      @JsonKey(name: "opstatus") final String? opstatus,
      @JsonKey(name: "internet") final String? internet,
      @JsonKey(name: "ren_date") final String? renDate,
      @JsonKey(name: "sectioned") final dynamic sectioned,
      @JsonKey(name: "functional") final int? functional,
      @JsonKey(name: "icu_sectioned") final dynamic icuSectioned,
      @JsonKey(name: "icu_functional") final dynamic icuFunctional,
      @JsonKey(name: "ventilator_sectioned") final dynamic ventilatorSectioned,
      @JsonKey(name: "ventilator_functional")
      final dynamic ventilatorFunctional,
      @JsonKey(name: "province") final Province? province,
      @JsonKey(name: "district") final District? district,
      @JsonKey(name: "municipality") final Municipality? municipality,
      @JsonKey(name: "ward") final int? ward,
      @JsonKey(name: "estd_date") final String? estdDate,
      @JsonKey(name: "validity") final String? validity,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "telephone") final String? telephone,
      @JsonKey(name: "oxygen") final String? oxygen,
      @JsonKey(name: "ambulance") final String? ambulance,
      @JsonKey(name: "concentrator") final String? concentrator,
      @JsonKey(name: "cylinder") final String? cylinder,
      @JsonKey(name: "ehs") final String? ehs,
      @JsonKey(name: "geriatrics") final String? geriatrics,
      @JsonKey(name: "insurance") final String? insurance,
      @JsonKey(name: "ocmc") final String? ocmc,
      @JsonKey(name: "pharmacy") final String? pharmacy,
      @JsonKey(name: "plant_capacity") final String? plantCapacity,
      @JsonKey(name: "ssu") final String? ssu,
      @JsonKey(name: "contact_person") final String? contactPerson,
      @JsonKey(name: "contact_person_mobile") final String? contactPersonMobile,
      @JsonKey(name: "ambulance_category") final String? ambulanceCategory,
      @JsonKey(name: "ambulance_contact") final String? ambulanceContact,
      @JsonKey(name: "hdu_functional") final dynamic hduFunctional,
      @JsonKey(name: "hdu_sectioned") final dynamic hduSectioned,
      @JsonKey(name: "nicu_functional") final dynamic nicuFunctional,
      @JsonKey(name: "nicu_sectioned") final dynamic nicuSectioned,
      @JsonKey(name: "org_source") final dynamic orgSource,
      @JsonKey(name: "building_cost") final dynamic buildingCost,
      @JsonKey(name: "device_cost") final dynamic deviceCost,
      @JsonKey(name: "est_income") final dynamic estIncome,
      @JsonKey(name: "loan_org") final dynamic loanOrg,
      @JsonKey(name: "other_source") final dynamic otherSource,
      @JsonKey(name: "property_source") final dynamic propertySource,
      @JsonKey(name: "workforce_cost") final dynamic workforceCost,
      @JsonKey(name: "approvedate") final DateTime? approvedate,
      @JsonKey(name: "approveby") final String? approveby,
      @JsonKey(name: "service_type") final ServiceType? serviceType,
      @JsonKey(name: "ownership") final int? ownership,
      @JsonKey(name: "ownerships") final Ownerships? ownerships,
      @JsonKey(name: "level") final int? level,
      @JsonKey(name: "health_facility_level")
      final HealthFacilityLevel? healthFacilityLevel,
      @JsonKey(name: "oldlevel") final int? oldlevel,
      @JsonKey(name: "building_maps") final String? buildingMaps,
      @JsonKey(name: "hf_details") final String? hfDetails,
      @JsonKey(name: "iee_certs") final dynamic ieeCerts,
      @JsonKey(name: "mem_citizenships") final dynamic memCitizenships,
      @JsonKey(name: "org_articles") final dynamic orgArticles,
      @JsonKey(name: "org_perms") final dynamic orgPerms,
      @JsonKey(name: "reg_orgs") final dynamic regOrgs,
      @JsonKey(name: "service_fees") final dynamic serviceFees,
      @JsonKey(name: "tax_clears") final dynamic taxClears,
      @JsonKey(name: "vat_pans") final dynamic vatPans,
      @JsonKey(name: "hcode") final dynamic hcode,
      @JsonKey(name: "rtype") final dynamic rtype}) = _$PropertiesImpl;

  factory _Properties.fromJson(Map<String, dynamic> json) =
      _$PropertiesImpl.fromJson;

  @override
  @JsonKey(name: "hfCode")
  int? get hfCode;
  @override
  @JsonKey(name: "type")
  int? get type;
  @override
  @JsonKey(name: "Health_facility_Type")
  HealthFacilityType? get healthFacilityType;
  @override
  @JsonKey(name: "authlevel")
  String? get authlevel;
  @override
  @JsonKey(name: "ftype")
  int? get ftype;
  @override
  @JsonKey(name: "opstatus")
  String? get opstatus;
  @override
  @JsonKey(name: "internet")
  String? get internet;
  @override
  @JsonKey(name: "ren_date")
  String? get renDate;
  @override
  @JsonKey(name: "sectioned")
  dynamic get sectioned;
  @override
  @JsonKey(name: "functional")
  int? get functional;
  @override
  @JsonKey(name: "icu_sectioned")
  dynamic get icuSectioned;
  @override
  @JsonKey(name: "icu_functional")
  dynamic get icuFunctional;
  @override
  @JsonKey(name: "ventilator_sectioned")
  dynamic get ventilatorSectioned;
  @override
  @JsonKey(name: "ventilator_functional")
  dynamic get ventilatorFunctional;
  @override
  @JsonKey(name: "province")
  Province? get province;
  @override
  @JsonKey(name: "district")
  District? get district;
  @override
  @JsonKey(name: "municipality")
  Municipality? get municipality;
  @override
  @JsonKey(name: "ward")
  int? get ward;
  @override
  @JsonKey(name: "estd_date")
  String? get estdDate;
  @override
  @JsonKey(name: "validity")
  String? get validity;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "telephone")
  String? get telephone;
  @override
  @JsonKey(name: "oxygen")
  String? get oxygen;
  @override
  @JsonKey(name: "ambulance")
  String? get ambulance;
  @override
  @JsonKey(name: "concentrator")
  String? get concentrator;
  @override
  @JsonKey(name: "cylinder")
  String? get cylinder;
  @override
  @JsonKey(name: "ehs")
  String? get ehs;
  @override
  @JsonKey(name: "geriatrics")
  String? get geriatrics;
  @override
  @JsonKey(name: "insurance")
  String? get insurance;
  @override
  @JsonKey(name: "ocmc")
  String? get ocmc;
  @override
  @JsonKey(name: "pharmacy")
  String? get pharmacy;
  @override
  @JsonKey(name: "plant_capacity")
  String? get plantCapacity;
  @override
  @JsonKey(name: "ssu")
  String? get ssu;
  @override
  @JsonKey(name: "contact_person")
  String? get contactPerson;
  @override
  @JsonKey(name: "contact_person_mobile")
  String? get contactPersonMobile;
  @override
  @JsonKey(name: "ambulance_category")
  String? get ambulanceCategory;
  @override
  @JsonKey(name: "ambulance_contact")
  String? get ambulanceContact;
  @override
  @JsonKey(name: "hdu_functional")
  dynamic get hduFunctional;
  @override
  @JsonKey(name: "hdu_sectioned")
  dynamic get hduSectioned;
  @override
  @JsonKey(name: "nicu_functional")
  dynamic get nicuFunctional;
  @override
  @JsonKey(name: "nicu_sectioned")
  dynamic get nicuSectioned;
  @override
  @JsonKey(name: "org_source")
  dynamic get orgSource;
  @override
  @JsonKey(name: "building_cost")
  dynamic get buildingCost;
  @override
  @JsonKey(name: "device_cost")
  dynamic get deviceCost;
  @override
  @JsonKey(name: "est_income")
  dynamic get estIncome;
  @override
  @JsonKey(name: "loan_org")
  dynamic get loanOrg;
  @override
  @JsonKey(name: "other_source")
  dynamic get otherSource;
  @override
  @JsonKey(name: "property_source")
  dynamic get propertySource;
  @override
  @JsonKey(name: "workforce_cost")
  dynamic get workforceCost;
  @override
  @JsonKey(name: "approvedate")
  DateTime? get approvedate;
  @override
  @JsonKey(name: "approveby")
  String? get approveby;
  @override
  @JsonKey(name: "service_type")
  ServiceType? get serviceType;
  @override
  @JsonKey(name: "ownership")
  int? get ownership;
  @override
  @JsonKey(name: "ownerships")
  Ownerships? get ownerships;
  @override
  @JsonKey(name: "level")
  int? get level;
  @override
  @JsonKey(name: "health_facility_level")
  HealthFacilityLevel? get healthFacilityLevel;
  @override
  @JsonKey(name: "oldlevel")
  int? get oldlevel;
  @override
  @JsonKey(name: "building_maps")
  String? get buildingMaps;
  @override
  @JsonKey(name: "hf_details")
  String? get hfDetails;
  @override
  @JsonKey(name: "iee_certs")
  dynamic get ieeCerts;
  @override
  @JsonKey(name: "mem_citizenships")
  dynamic get memCitizenships;
  @override
  @JsonKey(name: "org_articles")
  dynamic get orgArticles;
  @override
  @JsonKey(name: "org_perms")
  dynamic get orgPerms;
  @override
  @JsonKey(name: "reg_orgs")
  dynamic get regOrgs;
  @override
  @JsonKey(name: "service_fees")
  dynamic get serviceFees;
  @override
  @JsonKey(name: "tax_clears")
  dynamic get taxClears;
  @override
  @JsonKey(name: "vat_pans")
  dynamic get vatPans;
  @override
  @JsonKey(name: "hcode")
  dynamic get hcode;
  @override
  @JsonKey(name: "rtype")
  dynamic get rtype;

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertiesImplCopyWith<_$PropertiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

District _$DistrictFromJson(Map<String, dynamic> json) {
  return _District.fromJson(json);
}

/// @nodoc
mixin _$District {
  @JsonKey(name: "district_id")
  String? get districtId => throw _privateConstructorUsedError;
  @JsonKey(name: "district_name")
  String? get districtName => throw _privateConstructorUsedError;

  /// Serializes this District to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistrictCopyWith<District> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictCopyWith<$Res> {
  factory $DistrictCopyWith(District value, $Res Function(District) then) =
      _$DistrictCopyWithImpl<$Res, District>;
  @useResult
  $Res call(
      {@JsonKey(name: "district_id") String? districtId,
      @JsonKey(name: "district_name") String? districtName});
}

/// @nodoc
class _$DistrictCopyWithImpl<$Res, $Val extends District>
    implements $DistrictCopyWith<$Res> {
  _$DistrictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? districtId = freezed,
    Object? districtName = freezed,
  }) {
    return _then(_value.copyWith(
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as String?,
      districtName: freezed == districtName
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistrictImplCopyWith<$Res>
    implements $DistrictCopyWith<$Res> {
  factory _$$DistrictImplCopyWith(
          _$DistrictImpl value, $Res Function(_$DistrictImpl) then) =
      __$$DistrictImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "district_id") String? districtId,
      @JsonKey(name: "district_name") String? districtName});
}

/// @nodoc
class __$$DistrictImplCopyWithImpl<$Res>
    extends _$DistrictCopyWithImpl<$Res, _$DistrictImpl>
    implements _$$DistrictImplCopyWith<$Res> {
  __$$DistrictImplCopyWithImpl(
      _$DistrictImpl _value, $Res Function(_$DistrictImpl) _then)
      : super(_value, _then);

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? districtId = freezed,
    Object? districtName = freezed,
  }) {
    return _then(_$DistrictImpl(
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as String?,
      districtName: freezed == districtName
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistrictImpl implements _District {
  const _$DistrictImpl(
      {@JsonKey(name: "district_id") this.districtId,
      @JsonKey(name: "district_name") this.districtName});

  factory _$DistrictImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictImplFromJson(json);

  @override
  @JsonKey(name: "district_id")
  final String? districtId;
  @override
  @JsonKey(name: "district_name")
  final String? districtName;

  @override
  String toString() {
    return 'District(districtId: $districtId, districtName: $districtName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictImpl &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.districtName, districtName) ||
                other.districtName == districtName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, districtId, districtName);

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictImplCopyWith<_$DistrictImpl> get copyWith =>
      __$$DistrictImplCopyWithImpl<_$DistrictImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictImplToJson(
      this,
    );
  }
}

abstract class _District implements District {
  const factory _District(
          {@JsonKey(name: "district_id") final String? districtId,
          @JsonKey(name: "district_name") final String? districtName}) =
      _$DistrictImpl;

  factory _District.fromJson(Map<String, dynamic> json) =
      _$DistrictImpl.fromJson;

  @override
  @JsonKey(name: "district_id")
  String? get districtId;
  @override
  @JsonKey(name: "district_name")
  String? get districtName;

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistrictImplCopyWith<_$DistrictImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HealthFacilityLevel _$HealthFacilityLevelFromJson(Map<String, dynamic> json) {
  return _HealthFacilityLevel.fromJson(json);
}

/// @nodoc
mixin _$HealthFacilityLevel {
  @JsonKey(name: "facility_level_id")
  String? get facilityLevelId => throw _privateConstructorUsedError;
  @JsonKey(name: "facility_level_code")
  String? get facilityLevelCode => throw _privateConstructorUsedError;
  @JsonKey(name: "facility_level_name")
  String? get facilityLevelName => throw _privateConstructorUsedError;
  @JsonKey(name: "facility_level_status")
  String? get facilityLevelStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "facility_level_parent")
  String? get facilityLevelParent => throw _privateConstructorUsedError;
  @JsonKey(name: "facility_level_types")
  String? get facilityLevelTypes => throw _privateConstructorUsedError;

  /// Serializes this HealthFacilityLevel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthFacilityLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthFacilityLevelCopyWith<HealthFacilityLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthFacilityLevelCopyWith<$Res> {
  factory $HealthFacilityLevelCopyWith(
          HealthFacilityLevel value, $Res Function(HealthFacilityLevel) then) =
      _$HealthFacilityLevelCopyWithImpl<$Res, HealthFacilityLevel>;
  @useResult
  $Res call(
      {@JsonKey(name: "facility_level_id") String? facilityLevelId,
      @JsonKey(name: "facility_level_code") String? facilityLevelCode,
      @JsonKey(name: "facility_level_name") String? facilityLevelName,
      @JsonKey(name: "facility_level_status") String? facilityLevelStatus,
      @JsonKey(name: "facility_level_parent") String? facilityLevelParent,
      @JsonKey(name: "facility_level_types") String? facilityLevelTypes});
}

/// @nodoc
class _$HealthFacilityLevelCopyWithImpl<$Res, $Val extends HealthFacilityLevel>
    implements $HealthFacilityLevelCopyWith<$Res> {
  _$HealthFacilityLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthFacilityLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityLevelId = freezed,
    Object? facilityLevelCode = freezed,
    Object? facilityLevelName = freezed,
    Object? facilityLevelStatus = freezed,
    Object? facilityLevelParent = freezed,
    Object? facilityLevelTypes = freezed,
  }) {
    return _then(_value.copyWith(
      facilityLevelId: freezed == facilityLevelId
          ? _value.facilityLevelId
          : facilityLevelId // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityLevelCode: freezed == facilityLevelCode
          ? _value.facilityLevelCode
          : facilityLevelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityLevelName: freezed == facilityLevelName
          ? _value.facilityLevelName
          : facilityLevelName // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityLevelStatus: freezed == facilityLevelStatus
          ? _value.facilityLevelStatus
          : facilityLevelStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityLevelParent: freezed == facilityLevelParent
          ? _value.facilityLevelParent
          : facilityLevelParent // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityLevelTypes: freezed == facilityLevelTypes
          ? _value.facilityLevelTypes
          : facilityLevelTypes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthFacilityLevelImplCopyWith<$Res>
    implements $HealthFacilityLevelCopyWith<$Res> {
  factory _$$HealthFacilityLevelImplCopyWith(_$HealthFacilityLevelImpl value,
          $Res Function(_$HealthFacilityLevelImpl) then) =
      __$$HealthFacilityLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "facility_level_id") String? facilityLevelId,
      @JsonKey(name: "facility_level_code") String? facilityLevelCode,
      @JsonKey(name: "facility_level_name") String? facilityLevelName,
      @JsonKey(name: "facility_level_status") String? facilityLevelStatus,
      @JsonKey(name: "facility_level_parent") String? facilityLevelParent,
      @JsonKey(name: "facility_level_types") String? facilityLevelTypes});
}

/// @nodoc
class __$$HealthFacilityLevelImplCopyWithImpl<$Res>
    extends _$HealthFacilityLevelCopyWithImpl<$Res, _$HealthFacilityLevelImpl>
    implements _$$HealthFacilityLevelImplCopyWith<$Res> {
  __$$HealthFacilityLevelImplCopyWithImpl(_$HealthFacilityLevelImpl _value,
      $Res Function(_$HealthFacilityLevelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthFacilityLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityLevelId = freezed,
    Object? facilityLevelCode = freezed,
    Object? facilityLevelName = freezed,
    Object? facilityLevelStatus = freezed,
    Object? facilityLevelParent = freezed,
    Object? facilityLevelTypes = freezed,
  }) {
    return _then(_$HealthFacilityLevelImpl(
      facilityLevelId: freezed == facilityLevelId
          ? _value.facilityLevelId
          : facilityLevelId // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityLevelCode: freezed == facilityLevelCode
          ? _value.facilityLevelCode
          : facilityLevelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityLevelName: freezed == facilityLevelName
          ? _value.facilityLevelName
          : facilityLevelName // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityLevelStatus: freezed == facilityLevelStatus
          ? _value.facilityLevelStatus
          : facilityLevelStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityLevelParent: freezed == facilityLevelParent
          ? _value.facilityLevelParent
          : facilityLevelParent // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityLevelTypes: freezed == facilityLevelTypes
          ? _value.facilityLevelTypes
          : facilityLevelTypes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthFacilityLevelImpl implements _HealthFacilityLevel {
  const _$HealthFacilityLevelImpl(
      {@JsonKey(name: "facility_level_id") this.facilityLevelId,
      @JsonKey(name: "facility_level_code") this.facilityLevelCode,
      @JsonKey(name: "facility_level_name") this.facilityLevelName,
      @JsonKey(name: "facility_level_status") this.facilityLevelStatus,
      @JsonKey(name: "facility_level_parent") this.facilityLevelParent,
      @JsonKey(name: "facility_level_types") this.facilityLevelTypes});

  factory _$HealthFacilityLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthFacilityLevelImplFromJson(json);

  @override
  @JsonKey(name: "facility_level_id")
  final String? facilityLevelId;
  @override
  @JsonKey(name: "facility_level_code")
  final String? facilityLevelCode;
  @override
  @JsonKey(name: "facility_level_name")
  final String? facilityLevelName;
  @override
  @JsonKey(name: "facility_level_status")
  final String? facilityLevelStatus;
  @override
  @JsonKey(name: "facility_level_parent")
  final String? facilityLevelParent;
  @override
  @JsonKey(name: "facility_level_types")
  final String? facilityLevelTypes;

  @override
  String toString() {
    return 'HealthFacilityLevel(facilityLevelId: $facilityLevelId, facilityLevelCode: $facilityLevelCode, facilityLevelName: $facilityLevelName, facilityLevelStatus: $facilityLevelStatus, facilityLevelParent: $facilityLevelParent, facilityLevelTypes: $facilityLevelTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthFacilityLevelImpl &&
            (identical(other.facilityLevelId, facilityLevelId) ||
                other.facilityLevelId == facilityLevelId) &&
            (identical(other.facilityLevelCode, facilityLevelCode) ||
                other.facilityLevelCode == facilityLevelCode) &&
            (identical(other.facilityLevelName, facilityLevelName) ||
                other.facilityLevelName == facilityLevelName) &&
            (identical(other.facilityLevelStatus, facilityLevelStatus) ||
                other.facilityLevelStatus == facilityLevelStatus) &&
            (identical(other.facilityLevelParent, facilityLevelParent) ||
                other.facilityLevelParent == facilityLevelParent) &&
            (identical(other.facilityLevelTypes, facilityLevelTypes) ||
                other.facilityLevelTypes == facilityLevelTypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      facilityLevelId,
      facilityLevelCode,
      facilityLevelName,
      facilityLevelStatus,
      facilityLevelParent,
      facilityLevelTypes);

  /// Create a copy of HealthFacilityLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthFacilityLevelImplCopyWith<_$HealthFacilityLevelImpl> get copyWith =>
      __$$HealthFacilityLevelImplCopyWithImpl<_$HealthFacilityLevelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthFacilityLevelImplToJson(
      this,
    );
  }
}

abstract class _HealthFacilityLevel implements HealthFacilityLevel {
  const factory _HealthFacilityLevel(
      {@JsonKey(name: "facility_level_id") final String? facilityLevelId,
      @JsonKey(name: "facility_level_code") final String? facilityLevelCode,
      @JsonKey(name: "facility_level_name") final String? facilityLevelName,
      @JsonKey(name: "facility_level_status") final String? facilityLevelStatus,
      @JsonKey(name: "facility_level_parent") final String? facilityLevelParent,
      @JsonKey(name: "facility_level_types")
      final String? facilityLevelTypes}) = _$HealthFacilityLevelImpl;

  factory _HealthFacilityLevel.fromJson(Map<String, dynamic> json) =
      _$HealthFacilityLevelImpl.fromJson;

  @override
  @JsonKey(name: "facility_level_id")
  String? get facilityLevelId;
  @override
  @JsonKey(name: "facility_level_code")
  String? get facilityLevelCode;
  @override
  @JsonKey(name: "facility_level_name")
  String? get facilityLevelName;
  @override
  @JsonKey(name: "facility_level_status")
  String? get facilityLevelStatus;
  @override
  @JsonKey(name: "facility_level_parent")
  String? get facilityLevelParent;
  @override
  @JsonKey(name: "facility_level_types")
  String? get facilityLevelTypes;

  /// Create a copy of HealthFacilityLevel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthFacilityLevelImplCopyWith<_$HealthFacilityLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HealthFacilityType _$HealthFacilityTypeFromJson(Map<String, dynamic> json) {
  return _HealthFacilityType.fromJson(json);
}

/// @nodoc
mixin _$HealthFacilityType {
  @JsonKey(name: "hftype_id")
  String? get hftypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "hftype_code")
  String? get hftypeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "hftype_name")
  String? get hftypeName => throw _privateConstructorUsedError;

  /// Serializes this HealthFacilityType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthFacilityType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthFacilityTypeCopyWith<HealthFacilityType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthFacilityTypeCopyWith<$Res> {
  factory $HealthFacilityTypeCopyWith(
          HealthFacilityType value, $Res Function(HealthFacilityType) then) =
      _$HealthFacilityTypeCopyWithImpl<$Res, HealthFacilityType>;
  @useResult
  $Res call(
      {@JsonKey(name: "hftype_id") String? hftypeId,
      @JsonKey(name: "hftype_code") String? hftypeCode,
      @JsonKey(name: "hftype_name") String? hftypeName});
}

/// @nodoc
class _$HealthFacilityTypeCopyWithImpl<$Res, $Val extends HealthFacilityType>
    implements $HealthFacilityTypeCopyWith<$Res> {
  _$HealthFacilityTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthFacilityType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hftypeId = freezed,
    Object? hftypeCode = freezed,
    Object? hftypeName = freezed,
  }) {
    return _then(_value.copyWith(
      hftypeId: freezed == hftypeId
          ? _value.hftypeId
          : hftypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      hftypeCode: freezed == hftypeCode
          ? _value.hftypeCode
          : hftypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      hftypeName: freezed == hftypeName
          ? _value.hftypeName
          : hftypeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthFacilityTypeImplCopyWith<$Res>
    implements $HealthFacilityTypeCopyWith<$Res> {
  factory _$$HealthFacilityTypeImplCopyWith(_$HealthFacilityTypeImpl value,
          $Res Function(_$HealthFacilityTypeImpl) then) =
      __$$HealthFacilityTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "hftype_id") String? hftypeId,
      @JsonKey(name: "hftype_code") String? hftypeCode,
      @JsonKey(name: "hftype_name") String? hftypeName});
}

/// @nodoc
class __$$HealthFacilityTypeImplCopyWithImpl<$Res>
    extends _$HealthFacilityTypeCopyWithImpl<$Res, _$HealthFacilityTypeImpl>
    implements _$$HealthFacilityTypeImplCopyWith<$Res> {
  __$$HealthFacilityTypeImplCopyWithImpl(_$HealthFacilityTypeImpl _value,
      $Res Function(_$HealthFacilityTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthFacilityType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hftypeId = freezed,
    Object? hftypeCode = freezed,
    Object? hftypeName = freezed,
  }) {
    return _then(_$HealthFacilityTypeImpl(
      hftypeId: freezed == hftypeId
          ? _value.hftypeId
          : hftypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      hftypeCode: freezed == hftypeCode
          ? _value.hftypeCode
          : hftypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      hftypeName: freezed == hftypeName
          ? _value.hftypeName
          : hftypeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthFacilityTypeImpl implements _HealthFacilityType {
  const _$HealthFacilityTypeImpl(
      {@JsonKey(name: "hftype_id") this.hftypeId,
      @JsonKey(name: "hftype_code") this.hftypeCode,
      @JsonKey(name: "hftype_name") this.hftypeName});

  factory _$HealthFacilityTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthFacilityTypeImplFromJson(json);

  @override
  @JsonKey(name: "hftype_id")
  final String? hftypeId;
  @override
  @JsonKey(name: "hftype_code")
  final String? hftypeCode;
  @override
  @JsonKey(name: "hftype_name")
  final String? hftypeName;

  @override
  String toString() {
    return 'HealthFacilityType(hftypeId: $hftypeId, hftypeCode: $hftypeCode, hftypeName: $hftypeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthFacilityTypeImpl &&
            (identical(other.hftypeId, hftypeId) ||
                other.hftypeId == hftypeId) &&
            (identical(other.hftypeCode, hftypeCode) ||
                other.hftypeCode == hftypeCode) &&
            (identical(other.hftypeName, hftypeName) ||
                other.hftypeName == hftypeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hftypeId, hftypeCode, hftypeName);

  /// Create a copy of HealthFacilityType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthFacilityTypeImplCopyWith<_$HealthFacilityTypeImpl> get copyWith =>
      __$$HealthFacilityTypeImplCopyWithImpl<_$HealthFacilityTypeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthFacilityTypeImplToJson(
      this,
    );
  }
}

abstract class _HealthFacilityType implements HealthFacilityType {
  const factory _HealthFacilityType(
          {@JsonKey(name: "hftype_id") final String? hftypeId,
          @JsonKey(name: "hftype_code") final String? hftypeCode,
          @JsonKey(name: "hftype_name") final String? hftypeName}) =
      _$HealthFacilityTypeImpl;

  factory _HealthFacilityType.fromJson(Map<String, dynamic> json) =
      _$HealthFacilityTypeImpl.fromJson;

  @override
  @JsonKey(name: "hftype_id")
  String? get hftypeId;
  @override
  @JsonKey(name: "hftype_code")
  String? get hftypeCode;
  @override
  @JsonKey(name: "hftype_name")
  String? get hftypeName;

  /// Create a copy of HealthFacilityType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthFacilityTypeImplCopyWith<_$HealthFacilityTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Municipality _$MunicipalityFromJson(Map<String, dynamic> json) {
  return _Municipality.fromJson(json);
}

/// @nodoc
mixin _$Municipality {
  @JsonKey(name: "municipality_id")
  String? get municipalityId => throw _privateConstructorUsedError;
  @JsonKey(name: "municipality_name")
  String? get municipalityName => throw _privateConstructorUsedError;

  /// Serializes this Municipality to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Municipality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MunicipalityCopyWith<Municipality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MunicipalityCopyWith<$Res> {
  factory $MunicipalityCopyWith(
          Municipality value, $Res Function(Municipality) then) =
      _$MunicipalityCopyWithImpl<$Res, Municipality>;
  @useResult
  $Res call(
      {@JsonKey(name: "municipality_id") String? municipalityId,
      @JsonKey(name: "municipality_name") String? municipalityName});
}

/// @nodoc
class _$MunicipalityCopyWithImpl<$Res, $Val extends Municipality>
    implements $MunicipalityCopyWith<$Res> {
  _$MunicipalityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Municipality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? municipalityId = freezed,
    Object? municipalityName = freezed,
  }) {
    return _then(_value.copyWith(
      municipalityId: freezed == municipalityId
          ? _value.municipalityId
          : municipalityId // ignore: cast_nullable_to_non_nullable
              as String?,
      municipalityName: freezed == municipalityName
          ? _value.municipalityName
          : municipalityName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MunicipalityImplCopyWith<$Res>
    implements $MunicipalityCopyWith<$Res> {
  factory _$$MunicipalityImplCopyWith(
          _$MunicipalityImpl value, $Res Function(_$MunicipalityImpl) then) =
      __$$MunicipalityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "municipality_id") String? municipalityId,
      @JsonKey(name: "municipality_name") String? municipalityName});
}

/// @nodoc
class __$$MunicipalityImplCopyWithImpl<$Res>
    extends _$MunicipalityCopyWithImpl<$Res, _$MunicipalityImpl>
    implements _$$MunicipalityImplCopyWith<$Res> {
  __$$MunicipalityImplCopyWithImpl(
      _$MunicipalityImpl _value, $Res Function(_$MunicipalityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Municipality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? municipalityId = freezed,
    Object? municipalityName = freezed,
  }) {
    return _then(_$MunicipalityImpl(
      municipalityId: freezed == municipalityId
          ? _value.municipalityId
          : municipalityId // ignore: cast_nullable_to_non_nullable
              as String?,
      municipalityName: freezed == municipalityName
          ? _value.municipalityName
          : municipalityName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MunicipalityImpl implements _Municipality {
  const _$MunicipalityImpl(
      {@JsonKey(name: "municipality_id") this.municipalityId,
      @JsonKey(name: "municipality_name") this.municipalityName});

  factory _$MunicipalityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MunicipalityImplFromJson(json);

  @override
  @JsonKey(name: "municipality_id")
  final String? municipalityId;
  @override
  @JsonKey(name: "municipality_name")
  final String? municipalityName;

  @override
  String toString() {
    return 'Municipality(municipalityId: $municipalityId, municipalityName: $municipalityName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MunicipalityImpl &&
            (identical(other.municipalityId, municipalityId) ||
                other.municipalityId == municipalityId) &&
            (identical(other.municipalityName, municipalityName) ||
                other.municipalityName == municipalityName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, municipalityId, municipalityName);

  /// Create a copy of Municipality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MunicipalityImplCopyWith<_$MunicipalityImpl> get copyWith =>
      __$$MunicipalityImplCopyWithImpl<_$MunicipalityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MunicipalityImplToJson(
      this,
    );
  }
}

abstract class _Municipality implements Municipality {
  const factory _Municipality(
          {@JsonKey(name: "municipality_id") final String? municipalityId,
          @JsonKey(name: "municipality_name") final String? municipalityName}) =
      _$MunicipalityImpl;

  factory _Municipality.fromJson(Map<String, dynamic> json) =
      _$MunicipalityImpl.fromJson;

  @override
  @JsonKey(name: "municipality_id")
  String? get municipalityId;
  @override
  @JsonKey(name: "municipality_name")
  String? get municipalityName;

  /// Create a copy of Municipality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MunicipalityImplCopyWith<_$MunicipalityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ownerships _$OwnershipsFromJson(Map<String, dynamic> json) {
  return _Ownerships.fromJson(json);
}

/// @nodoc
mixin _$Ownerships {
  @JsonKey(name: "ownership_id")
  String? get ownershipId => throw _privateConstructorUsedError;
  @JsonKey(name: "ownership_name")
  String? get ownershipName => throw _privateConstructorUsedError;
  @JsonKey(name: "ownership_code")
  String? get ownershipCode => throw _privateConstructorUsedError;
  @JsonKey(name: "ownership_status")
  String? get ownershipStatus => throw _privateConstructorUsedError;

  /// Serializes this Ownerships to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ownerships
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnershipsCopyWith<Ownerships> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnershipsCopyWith<$Res> {
  factory $OwnershipsCopyWith(
          Ownerships value, $Res Function(Ownerships) then) =
      _$OwnershipsCopyWithImpl<$Res, Ownerships>;
  @useResult
  $Res call(
      {@JsonKey(name: "ownership_id") String? ownershipId,
      @JsonKey(name: "ownership_name") String? ownershipName,
      @JsonKey(name: "ownership_code") String? ownershipCode,
      @JsonKey(name: "ownership_status") String? ownershipStatus});
}

/// @nodoc
class _$OwnershipsCopyWithImpl<$Res, $Val extends Ownerships>
    implements $OwnershipsCopyWith<$Res> {
  _$OwnershipsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ownerships
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownershipId = freezed,
    Object? ownershipName = freezed,
    Object? ownershipCode = freezed,
    Object? ownershipStatus = freezed,
  }) {
    return _then(_value.copyWith(
      ownershipId: freezed == ownershipId
          ? _value.ownershipId
          : ownershipId // ignore: cast_nullable_to_non_nullable
              as String?,
      ownershipName: freezed == ownershipName
          ? _value.ownershipName
          : ownershipName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownershipCode: freezed == ownershipCode
          ? _value.ownershipCode
          : ownershipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ownershipStatus: freezed == ownershipStatus
          ? _value.ownershipStatus
          : ownershipStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnershipsImplCopyWith<$Res>
    implements $OwnershipsCopyWith<$Res> {
  factory _$$OwnershipsImplCopyWith(
          _$OwnershipsImpl value, $Res Function(_$OwnershipsImpl) then) =
      __$$OwnershipsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ownership_id") String? ownershipId,
      @JsonKey(name: "ownership_name") String? ownershipName,
      @JsonKey(name: "ownership_code") String? ownershipCode,
      @JsonKey(name: "ownership_status") String? ownershipStatus});
}

/// @nodoc
class __$$OwnershipsImplCopyWithImpl<$Res>
    extends _$OwnershipsCopyWithImpl<$Res, _$OwnershipsImpl>
    implements _$$OwnershipsImplCopyWith<$Res> {
  __$$OwnershipsImplCopyWithImpl(
      _$OwnershipsImpl _value, $Res Function(_$OwnershipsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ownerships
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownershipId = freezed,
    Object? ownershipName = freezed,
    Object? ownershipCode = freezed,
    Object? ownershipStatus = freezed,
  }) {
    return _then(_$OwnershipsImpl(
      ownershipId: freezed == ownershipId
          ? _value.ownershipId
          : ownershipId // ignore: cast_nullable_to_non_nullable
              as String?,
      ownershipName: freezed == ownershipName
          ? _value.ownershipName
          : ownershipName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownershipCode: freezed == ownershipCode
          ? _value.ownershipCode
          : ownershipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ownershipStatus: freezed == ownershipStatus
          ? _value.ownershipStatus
          : ownershipStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnershipsImpl implements _Ownerships {
  const _$OwnershipsImpl(
      {@JsonKey(name: "ownership_id") this.ownershipId,
      @JsonKey(name: "ownership_name") this.ownershipName,
      @JsonKey(name: "ownership_code") this.ownershipCode,
      @JsonKey(name: "ownership_status") this.ownershipStatus});

  factory _$OwnershipsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnershipsImplFromJson(json);

  @override
  @JsonKey(name: "ownership_id")
  final String? ownershipId;
  @override
  @JsonKey(name: "ownership_name")
  final String? ownershipName;
  @override
  @JsonKey(name: "ownership_code")
  final String? ownershipCode;
  @override
  @JsonKey(name: "ownership_status")
  final String? ownershipStatus;

  @override
  String toString() {
    return 'Ownerships(ownershipId: $ownershipId, ownershipName: $ownershipName, ownershipCode: $ownershipCode, ownershipStatus: $ownershipStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnershipsImpl &&
            (identical(other.ownershipId, ownershipId) ||
                other.ownershipId == ownershipId) &&
            (identical(other.ownershipName, ownershipName) ||
                other.ownershipName == ownershipName) &&
            (identical(other.ownershipCode, ownershipCode) ||
                other.ownershipCode == ownershipCode) &&
            (identical(other.ownershipStatus, ownershipStatus) ||
                other.ownershipStatus == ownershipStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, ownershipId, ownershipName, ownershipCode, ownershipStatus);

  /// Create a copy of Ownerships
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnershipsImplCopyWith<_$OwnershipsImpl> get copyWith =>
      __$$OwnershipsImplCopyWithImpl<_$OwnershipsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnershipsImplToJson(
      this,
    );
  }
}

abstract class _Ownerships implements Ownerships {
  const factory _Ownerships(
          {@JsonKey(name: "ownership_id") final String? ownershipId,
          @JsonKey(name: "ownership_name") final String? ownershipName,
          @JsonKey(name: "ownership_code") final String? ownershipCode,
          @JsonKey(name: "ownership_status") final String? ownershipStatus}) =
      _$OwnershipsImpl;

  factory _Ownerships.fromJson(Map<String, dynamic> json) =
      _$OwnershipsImpl.fromJson;

  @override
  @JsonKey(name: "ownership_id")
  String? get ownershipId;
  @override
  @JsonKey(name: "ownership_name")
  String? get ownershipName;
  @override
  @JsonKey(name: "ownership_code")
  String? get ownershipCode;
  @override
  @JsonKey(name: "ownership_status")
  String? get ownershipStatus;

  /// Create a copy of Ownerships
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnershipsImplCopyWith<_$OwnershipsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Province _$ProvinceFromJson(Map<String, dynamic> json) {
  return _Province.fromJson(json);
}

/// @nodoc
mixin _$Province {
  @JsonKey(name: "province_id")
  String? get provinceId => throw _privateConstructorUsedError;
  @JsonKey(name: "province_name")
  String? get provinceName => throw _privateConstructorUsedError;

  /// Serializes this Province to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProvinceCopyWith<Province> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceCopyWith<$Res> {
  factory $ProvinceCopyWith(Province value, $Res Function(Province) then) =
      _$ProvinceCopyWithImpl<$Res, Province>;
  @useResult
  $Res call(
      {@JsonKey(name: "province_id") String? provinceId,
      @JsonKey(name: "province_name") String? provinceName});
}

/// @nodoc
class _$ProvinceCopyWithImpl<$Res, $Val extends Province>
    implements $ProvinceCopyWith<$Res> {
  _$ProvinceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceId = freezed,
    Object? provinceName = freezed,
  }) {
    return _then(_value.copyWith(
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceName: freezed == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProvinceImplCopyWith<$Res>
    implements $ProvinceCopyWith<$Res> {
  factory _$$ProvinceImplCopyWith(
          _$ProvinceImpl value, $Res Function(_$ProvinceImpl) then) =
      __$$ProvinceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "province_id") String? provinceId,
      @JsonKey(name: "province_name") String? provinceName});
}

/// @nodoc
class __$$ProvinceImplCopyWithImpl<$Res>
    extends _$ProvinceCopyWithImpl<$Res, _$ProvinceImpl>
    implements _$$ProvinceImplCopyWith<$Res> {
  __$$ProvinceImplCopyWithImpl(
      _$ProvinceImpl _value, $Res Function(_$ProvinceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceId = freezed,
    Object? provinceName = freezed,
  }) {
    return _then(_$ProvinceImpl(
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceName: freezed == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProvinceImpl implements _Province {
  const _$ProvinceImpl(
      {@JsonKey(name: "province_id") this.provinceId,
      @JsonKey(name: "province_name") this.provinceName});

  factory _$ProvinceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProvinceImplFromJson(json);

  @override
  @JsonKey(name: "province_id")
  final String? provinceId;
  @override
  @JsonKey(name: "province_name")
  final String? provinceName;

  @override
  String toString() {
    return 'Province(provinceId: $provinceId, provinceName: $provinceName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvinceImpl &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.provinceName, provinceName) ||
                other.provinceName == provinceName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, provinceId, provinceName);

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvinceImplCopyWith<_$ProvinceImpl> get copyWith =>
      __$$ProvinceImplCopyWithImpl<_$ProvinceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvinceImplToJson(
      this,
    );
  }
}

abstract class _Province implements Province {
  const factory _Province(
          {@JsonKey(name: "province_id") final String? provinceId,
          @JsonKey(name: "province_name") final String? provinceName}) =
      _$ProvinceImpl;

  factory _Province.fromJson(Map<String, dynamic> json) =
      _$ProvinceImpl.fromJson;

  @override
  @JsonKey(name: "province_id")
  String? get provinceId;
  @override
  @JsonKey(name: "province_name")
  String? get provinceName;

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProvinceImplCopyWith<_$ProvinceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceType _$ServiceTypeFromJson(Map<String, dynamic> json) {
  return _ServiceType.fromJson(json);
}

/// @nodoc
mixin _$ServiceType {
  @JsonKey(name: "ftype_id")
  String? get ftypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "ftype_code")
  String? get ftypeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "ftype_name")
  String? get ftypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "ftype_status")
  String? get ftypeStatus => throw _privateConstructorUsedError;

  /// Serializes this ServiceType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceTypeCopyWith<ServiceType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceTypeCopyWith<$Res> {
  factory $ServiceTypeCopyWith(
          ServiceType value, $Res Function(ServiceType) then) =
      _$ServiceTypeCopyWithImpl<$Res, ServiceType>;
  @useResult
  $Res call(
      {@JsonKey(name: "ftype_id") String? ftypeId,
      @JsonKey(name: "ftype_code") String? ftypeCode,
      @JsonKey(name: "ftype_name") String? ftypeName,
      @JsonKey(name: "ftype_status") String? ftypeStatus});
}

/// @nodoc
class _$ServiceTypeCopyWithImpl<$Res, $Val extends ServiceType>
    implements $ServiceTypeCopyWith<$Res> {
  _$ServiceTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ftypeId = freezed,
    Object? ftypeCode = freezed,
    Object? ftypeName = freezed,
    Object? ftypeStatus = freezed,
  }) {
    return _then(_value.copyWith(
      ftypeId: freezed == ftypeId
          ? _value.ftypeId
          : ftypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      ftypeCode: freezed == ftypeCode
          ? _value.ftypeCode
          : ftypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ftypeName: freezed == ftypeName
          ? _value.ftypeName
          : ftypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      ftypeStatus: freezed == ftypeStatus
          ? _value.ftypeStatus
          : ftypeStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceTypeImplCopyWith<$Res>
    implements $ServiceTypeCopyWith<$Res> {
  factory _$$ServiceTypeImplCopyWith(
          _$ServiceTypeImpl value, $Res Function(_$ServiceTypeImpl) then) =
      __$$ServiceTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ftype_id") String? ftypeId,
      @JsonKey(name: "ftype_code") String? ftypeCode,
      @JsonKey(name: "ftype_name") String? ftypeName,
      @JsonKey(name: "ftype_status") String? ftypeStatus});
}

/// @nodoc
class __$$ServiceTypeImplCopyWithImpl<$Res>
    extends _$ServiceTypeCopyWithImpl<$Res, _$ServiceTypeImpl>
    implements _$$ServiceTypeImplCopyWith<$Res> {
  __$$ServiceTypeImplCopyWithImpl(
      _$ServiceTypeImpl _value, $Res Function(_$ServiceTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ftypeId = freezed,
    Object? ftypeCode = freezed,
    Object? ftypeName = freezed,
    Object? ftypeStatus = freezed,
  }) {
    return _then(_$ServiceTypeImpl(
      ftypeId: freezed == ftypeId
          ? _value.ftypeId
          : ftypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      ftypeCode: freezed == ftypeCode
          ? _value.ftypeCode
          : ftypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ftypeName: freezed == ftypeName
          ? _value.ftypeName
          : ftypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      ftypeStatus: freezed == ftypeStatus
          ? _value.ftypeStatus
          : ftypeStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceTypeImpl implements _ServiceType {
  const _$ServiceTypeImpl(
      {@JsonKey(name: "ftype_id") this.ftypeId,
      @JsonKey(name: "ftype_code") this.ftypeCode,
      @JsonKey(name: "ftype_name") this.ftypeName,
      @JsonKey(name: "ftype_status") this.ftypeStatus});

  factory _$ServiceTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceTypeImplFromJson(json);

  @override
  @JsonKey(name: "ftype_id")
  final String? ftypeId;
  @override
  @JsonKey(name: "ftype_code")
  final String? ftypeCode;
  @override
  @JsonKey(name: "ftype_name")
  final String? ftypeName;
  @override
  @JsonKey(name: "ftype_status")
  final String? ftypeStatus;

  @override
  String toString() {
    return 'ServiceType(ftypeId: $ftypeId, ftypeCode: $ftypeCode, ftypeName: $ftypeName, ftypeStatus: $ftypeStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceTypeImpl &&
            (identical(other.ftypeId, ftypeId) || other.ftypeId == ftypeId) &&
            (identical(other.ftypeCode, ftypeCode) ||
                other.ftypeCode == ftypeCode) &&
            (identical(other.ftypeName, ftypeName) ||
                other.ftypeName == ftypeName) &&
            (identical(other.ftypeStatus, ftypeStatus) ||
                other.ftypeStatus == ftypeStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ftypeId, ftypeCode, ftypeName, ftypeStatus);

  /// Create a copy of ServiceType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceTypeImplCopyWith<_$ServiceTypeImpl> get copyWith =>
      __$$ServiceTypeImplCopyWithImpl<_$ServiceTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceTypeImplToJson(
      this,
    );
  }
}

abstract class _ServiceType implements ServiceType {
  const factory _ServiceType(
          {@JsonKey(name: "ftype_id") final String? ftypeId,
          @JsonKey(name: "ftype_code") final String? ftypeCode,
          @JsonKey(name: "ftype_name") final String? ftypeName,
          @JsonKey(name: "ftype_status") final String? ftypeStatus}) =
      _$ServiceTypeImpl;

  factory _ServiceType.fromJson(Map<String, dynamic> json) =
      _$ServiceTypeImpl.fromJson;

  @override
  @JsonKey(name: "ftype_id")
  String? get ftypeId;
  @override
  @JsonKey(name: "ftype_code")
  String? get ftypeCode;
  @override
  @JsonKey(name: "ftype_name")
  String? get ftypeName;
  @override
  @JsonKey(name: "ftype_status")
  String? get ftypeStatus;

  /// Create a copy of ServiceType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceTypeImplCopyWith<_$ServiceTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
