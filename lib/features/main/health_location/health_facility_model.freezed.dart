// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_facility_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealthFacility {

@JsonKey(name: "name") String? get name;@JsonKey(name: "href") String? get href;@JsonKey(name: "uuid") String? get uuid;@JsonKey(name: "active") String? get active;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;@JsonKey(name: "coordinates") Coordinates? get coordinates;@JsonKey(name: "identifiers") Identifiers? get identifiers;@JsonKey(name: "properties") Properties? get properties;
/// Create a copy of HealthFacility
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthFacilityCopyWith<HealthFacility> get copyWith => _$HealthFacilityCopyWithImpl<HealthFacility>(this as HealthFacility, _$identity);

  /// Serializes this HealthFacility to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthFacility&&(identical(other.name, name) || other.name == name)&&(identical(other.href, href) || other.href == href)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates)&&(identical(other.identifiers, identifiers) || other.identifiers == identifiers)&&(identical(other.properties, properties) || other.properties == properties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,href,uuid,active,createdAt,updatedAt,coordinates,identifiers,properties);

@override
String toString() {
  return 'HealthFacility(name: $name, href: $href, uuid: $uuid, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, coordinates: $coordinates, identifiers: $identifiers, properties: $properties)';
}


}

/// @nodoc
abstract mixin class $HealthFacilityCopyWith<$Res>  {
  factory $HealthFacilityCopyWith(HealthFacility value, $Res Function(HealthFacility) _then) = _$HealthFacilityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "href") String? href,@JsonKey(name: "uuid") String? uuid,@JsonKey(name: "active") String? active,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "coordinates") Coordinates? coordinates,@JsonKey(name: "identifiers") Identifiers? identifiers,@JsonKey(name: "properties") Properties? properties
});


$CoordinatesCopyWith<$Res>? get coordinates;$IdentifiersCopyWith<$Res>? get identifiers;$PropertiesCopyWith<$Res>? get properties;

}
/// @nodoc
class _$HealthFacilityCopyWithImpl<$Res>
    implements $HealthFacilityCopyWith<$Res> {
  _$HealthFacilityCopyWithImpl(this._self, this._then);

  final HealthFacility _self;
  final $Res Function(HealthFacility) _then;

/// Create a copy of HealthFacility
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? href = freezed,Object? uuid = freezed,Object? active = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? coordinates = freezed,Object? identifiers = freezed,Object? properties = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,href: freezed == href ? _self.href : href // ignore: cast_nullable_to_non_nullable
as String?,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,coordinates: freezed == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as Coordinates?,identifiers: freezed == identifiers ? _self.identifiers : identifiers // ignore: cast_nullable_to_non_nullable
as Identifiers?,properties: freezed == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as Properties?,
  ));
}
/// Create a copy of HealthFacility
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res>? get coordinates {
    if (_self.coordinates == null) {
    return null;
  }

  return $CoordinatesCopyWith<$Res>(_self.coordinates!, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}/// Create a copy of HealthFacility
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IdentifiersCopyWith<$Res>? get identifiers {
    if (_self.identifiers == null) {
    return null;
  }

  return $IdentifiersCopyWith<$Res>(_self.identifiers!, (value) {
    return _then(_self.copyWith(identifiers: value));
  });
}/// Create a copy of HealthFacility
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertiesCopyWith<$Res>? get properties {
    if (_self.properties == null) {
    return null;
  }

  return $PropertiesCopyWith<$Res>(_self.properties!, (value) {
    return _then(_self.copyWith(properties: value));
  });
}
}


/// Adds pattern-matching-related methods to [HealthFacility].
extension HealthFacilityPatterns on HealthFacility {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthFacility value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthFacility() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthFacility value)  $default,){
final _that = this;
switch (_that) {
case _HealthFacility():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthFacility value)?  $default,){
final _that = this;
switch (_that) {
case _HealthFacility() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "href")  String? href, @JsonKey(name: "uuid")  String? uuid, @JsonKey(name: "active")  String? active, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  DateTime? updatedAt, @JsonKey(name: "coordinates")  Coordinates? coordinates, @JsonKey(name: "identifiers")  Identifiers? identifiers, @JsonKey(name: "properties")  Properties? properties)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthFacility() when $default != null:
return $default(_that.name,_that.href,_that.uuid,_that.active,_that.createdAt,_that.updatedAt,_that.coordinates,_that.identifiers,_that.properties);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "href")  String? href, @JsonKey(name: "uuid")  String? uuid, @JsonKey(name: "active")  String? active, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  DateTime? updatedAt, @JsonKey(name: "coordinates")  Coordinates? coordinates, @JsonKey(name: "identifiers")  Identifiers? identifiers, @JsonKey(name: "properties")  Properties? properties)  $default,) {final _that = this;
switch (_that) {
case _HealthFacility():
return $default(_that.name,_that.href,_that.uuid,_that.active,_that.createdAt,_that.updatedAt,_that.coordinates,_that.identifiers,_that.properties);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "href")  String? href, @JsonKey(name: "uuid")  String? uuid, @JsonKey(name: "active")  String? active, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  DateTime? updatedAt, @JsonKey(name: "coordinates")  Coordinates? coordinates, @JsonKey(name: "identifiers")  Identifiers? identifiers, @JsonKey(name: "properties")  Properties? properties)?  $default,) {final _that = this;
switch (_that) {
case _HealthFacility() when $default != null:
return $default(_that.name,_that.href,_that.uuid,_that.active,_that.createdAt,_that.updatedAt,_that.coordinates,_that.identifiers,_that.properties);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthFacility implements HealthFacility {
  const _HealthFacility({@JsonKey(name: "name") this.name, @JsonKey(name: "href") this.href, @JsonKey(name: "uuid") this.uuid, @JsonKey(name: "active") this.active, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt, @JsonKey(name: "coordinates") this.coordinates, @JsonKey(name: "identifiers") this.identifiers, @JsonKey(name: "properties") this.properties});
  factory _HealthFacility.fromJson(Map<String, dynamic> json) => _$HealthFacilityFromJson(json);

@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "href") final  String? href;
@override@JsonKey(name: "uuid") final  String? uuid;
@override@JsonKey(name: "active") final  String? active;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;
@override@JsonKey(name: "coordinates") final  Coordinates? coordinates;
@override@JsonKey(name: "identifiers") final  Identifiers? identifiers;
@override@JsonKey(name: "properties") final  Properties? properties;

/// Create a copy of HealthFacility
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthFacilityCopyWith<_HealthFacility> get copyWith => __$HealthFacilityCopyWithImpl<_HealthFacility>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthFacilityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthFacility&&(identical(other.name, name) || other.name == name)&&(identical(other.href, href) || other.href == href)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates)&&(identical(other.identifiers, identifiers) || other.identifiers == identifiers)&&(identical(other.properties, properties) || other.properties == properties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,href,uuid,active,createdAt,updatedAt,coordinates,identifiers,properties);

@override
String toString() {
  return 'HealthFacility(name: $name, href: $href, uuid: $uuid, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, coordinates: $coordinates, identifiers: $identifiers, properties: $properties)';
}


}

/// @nodoc
abstract mixin class _$HealthFacilityCopyWith<$Res> implements $HealthFacilityCopyWith<$Res> {
  factory _$HealthFacilityCopyWith(_HealthFacility value, $Res Function(_HealthFacility) _then) = __$HealthFacilityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "href") String? href,@JsonKey(name: "uuid") String? uuid,@JsonKey(name: "active") String? active,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "coordinates") Coordinates? coordinates,@JsonKey(name: "identifiers") Identifiers? identifiers,@JsonKey(name: "properties") Properties? properties
});


@override $CoordinatesCopyWith<$Res>? get coordinates;@override $IdentifiersCopyWith<$Res>? get identifiers;@override $PropertiesCopyWith<$Res>? get properties;

}
/// @nodoc
class __$HealthFacilityCopyWithImpl<$Res>
    implements _$HealthFacilityCopyWith<$Res> {
  __$HealthFacilityCopyWithImpl(this._self, this._then);

  final _HealthFacility _self;
  final $Res Function(_HealthFacility) _then;

/// Create a copy of HealthFacility
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? href = freezed,Object? uuid = freezed,Object? active = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? coordinates = freezed,Object? identifiers = freezed,Object? properties = freezed,}) {
  return _then(_HealthFacility(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,href: freezed == href ? _self.href : href // ignore: cast_nullable_to_non_nullable
as String?,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,coordinates: freezed == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as Coordinates?,identifiers: freezed == identifiers ? _self.identifiers : identifiers // ignore: cast_nullable_to_non_nullable
as Identifiers?,properties: freezed == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as Properties?,
  ));
}

/// Create a copy of HealthFacility
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res>? get coordinates {
    if (_self.coordinates == null) {
    return null;
  }

  return $CoordinatesCopyWith<$Res>(_self.coordinates!, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}/// Create a copy of HealthFacility
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IdentifiersCopyWith<$Res>? get identifiers {
    if (_self.identifiers == null) {
    return null;
  }

  return $IdentifiersCopyWith<$Res>(_self.identifiers!, (value) {
    return _then(_self.copyWith(identifiers: value));
  });
}/// Create a copy of HealthFacility
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertiesCopyWith<$Res>? get properties {
    if (_self.properties == null) {
    return null;
  }

  return $PropertiesCopyWith<$Res>(_self.properties!, (value) {
    return _then(_self.copyWith(properties: value));
  });
}
}


/// @nodoc
mixin _$Coordinates {

@JsonKey(name: "latitude") String? get latitude;@JsonKey(name: "longitude") String? get longitude;
/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<Coordinates> get copyWith => _$CoordinatesCopyWithImpl<Coordinates>(this as Coordinates, _$identity);

  /// Serializes this Coordinates to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coordinates&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'Coordinates(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $CoordinatesCopyWith<$Res>  {
  factory $CoordinatesCopyWith(Coordinates value, $Res Function(Coordinates) _then) = _$CoordinatesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "latitude") String? latitude,@JsonKey(name: "longitude") String? longitude
});




}
/// @nodoc
class _$CoordinatesCopyWithImpl<$Res>
    implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._self, this._then);

  final Coordinates _self;
  final $Res Function(Coordinates) _then;

/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_self.copyWith(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Coordinates].
extension CoordinatesPatterns on Coordinates {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Coordinates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Coordinates value)  $default,){
final _that = this;
switch (_that) {
case _Coordinates():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Coordinates value)?  $default,){
final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "latitude")  String? latitude, @JsonKey(name: "longitude")  String? longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "latitude")  String? latitude, @JsonKey(name: "longitude")  String? longitude)  $default,) {final _that = this;
switch (_that) {
case _Coordinates():
return $default(_that.latitude,_that.longitude);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "latitude")  String? latitude, @JsonKey(name: "longitude")  String? longitude)?  $default,) {final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Coordinates implements Coordinates {
  const _Coordinates({@JsonKey(name: "latitude") this.latitude, @JsonKey(name: "longitude") this.longitude});
  factory _Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);

@override@JsonKey(name: "latitude") final  String? latitude;
@override@JsonKey(name: "longitude") final  String? longitude;

/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoordinatesCopyWith<_Coordinates> get copyWith => __$CoordinatesCopyWithImpl<_Coordinates>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoordinatesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Coordinates&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'Coordinates(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$CoordinatesCopyWith<$Res> implements $CoordinatesCopyWith<$Res> {
  factory _$CoordinatesCopyWith(_Coordinates value, $Res Function(_Coordinates) _then) = __$CoordinatesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "latitude") String? latitude,@JsonKey(name: "longitude") String? longitude
});




}
/// @nodoc
class __$CoordinatesCopyWithImpl<$Res>
    implements _$CoordinatesCopyWith<$Res> {
  __$CoordinatesCopyWithImpl(this._self, this._then);

  final _Coordinates _self;
  final $Res Function(_Coordinates) _then;

/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_Coordinates(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Identifiers {

@JsonKey(name: "iid") String? get iid;@JsonKey(name: "agency") String? get agency;
/// Create a copy of Identifiers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IdentifiersCopyWith<Identifiers> get copyWith => _$IdentifiersCopyWithImpl<Identifiers>(this as Identifiers, _$identity);

  /// Serializes this Identifiers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Identifiers&&(identical(other.iid, iid) || other.iid == iid)&&(identical(other.agency, agency) || other.agency == agency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,iid,agency);

@override
String toString() {
  return 'Identifiers(iid: $iid, agency: $agency)';
}


}

/// @nodoc
abstract mixin class $IdentifiersCopyWith<$Res>  {
  factory $IdentifiersCopyWith(Identifiers value, $Res Function(Identifiers) _then) = _$IdentifiersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "iid") String? iid,@JsonKey(name: "agency") String? agency
});




}
/// @nodoc
class _$IdentifiersCopyWithImpl<$Res>
    implements $IdentifiersCopyWith<$Res> {
  _$IdentifiersCopyWithImpl(this._self, this._then);

  final Identifiers _self;
  final $Res Function(Identifiers) _then;

/// Create a copy of Identifiers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? iid = freezed,Object? agency = freezed,}) {
  return _then(_self.copyWith(
iid: freezed == iid ? _self.iid : iid // ignore: cast_nullable_to_non_nullable
as String?,agency: freezed == agency ? _self.agency : agency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Identifiers].
extension IdentifiersPatterns on Identifiers {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Identifiers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Identifiers() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Identifiers value)  $default,){
final _that = this;
switch (_that) {
case _Identifiers():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Identifiers value)?  $default,){
final _that = this;
switch (_that) {
case _Identifiers() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "iid")  String? iid, @JsonKey(name: "agency")  String? agency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Identifiers() when $default != null:
return $default(_that.iid,_that.agency);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "iid")  String? iid, @JsonKey(name: "agency")  String? agency)  $default,) {final _that = this;
switch (_that) {
case _Identifiers():
return $default(_that.iid,_that.agency);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "iid")  String? iid, @JsonKey(name: "agency")  String? agency)?  $default,) {final _that = this;
switch (_that) {
case _Identifiers() when $default != null:
return $default(_that.iid,_that.agency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Identifiers implements Identifiers {
  const _Identifiers({@JsonKey(name: "iid") this.iid, @JsonKey(name: "agency") this.agency});
  factory _Identifiers.fromJson(Map<String, dynamic> json) => _$IdentifiersFromJson(json);

@override@JsonKey(name: "iid") final  String? iid;
@override@JsonKey(name: "agency") final  String? agency;

/// Create a copy of Identifiers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IdentifiersCopyWith<_Identifiers> get copyWith => __$IdentifiersCopyWithImpl<_Identifiers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IdentifiersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Identifiers&&(identical(other.iid, iid) || other.iid == iid)&&(identical(other.agency, agency) || other.agency == agency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,iid,agency);

@override
String toString() {
  return 'Identifiers(iid: $iid, agency: $agency)';
}


}

/// @nodoc
abstract mixin class _$IdentifiersCopyWith<$Res> implements $IdentifiersCopyWith<$Res> {
  factory _$IdentifiersCopyWith(_Identifiers value, $Res Function(_Identifiers) _then) = __$IdentifiersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "iid") String? iid,@JsonKey(name: "agency") String? agency
});




}
/// @nodoc
class __$IdentifiersCopyWithImpl<$Res>
    implements _$IdentifiersCopyWith<$Res> {
  __$IdentifiersCopyWithImpl(this._self, this._then);

  final _Identifiers _self;
  final $Res Function(_Identifiers) _then;

/// Create a copy of Identifiers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? iid = freezed,Object? agency = freezed,}) {
  return _then(_Identifiers(
iid: freezed == iid ? _self.iid : iid // ignore: cast_nullable_to_non_nullable
as String?,agency: freezed == agency ? _self.agency : agency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Properties {

@JsonKey(name: "hfCode") int? get hfCode;@JsonKey(name: "type") int? get type;@JsonKey(name: "Health_facility_Type") HealthFacilityType? get healthFacilityType;@JsonKey(name: "authlevel") String? get authlevel;@JsonKey(name: "ftype") int? get ftype;@JsonKey(name: "opstatus") String? get opstatus;@JsonKey(name: "internet") String? get internet;@JsonKey(name: "ren_date") String? get renDate;@JsonKey(name: "sectioned") dynamic get sectioned;@JsonKey(name: "functional") int? get functional;@JsonKey(name: "icu_sectioned") dynamic get icuSectioned;@JsonKey(name: "icu_functional") dynamic get icuFunctional;@JsonKey(name: "ventilator_sectioned") dynamic get ventilatorSectioned;@JsonKey(name: "ventilator_functional") dynamic get ventilatorFunctional;@JsonKey(name: "province") Province? get province;@JsonKey(name: "district") District? get district;@JsonKey(name: "municipality") Municipality? get municipality;@JsonKey(name: "ward") int? get ward;@JsonKey(name: "estd_date") String? get estdDate;@JsonKey(name: "validity") String? get validity;@JsonKey(name: "email") String? get email;@JsonKey(name: "telephone") String? get telephone;@JsonKey(name: "oxygen") String? get oxygen;@JsonKey(name: "ambulance") String? get ambulance;@JsonKey(name: "concentrator") String? get concentrator;@JsonKey(name: "cylinder") String? get cylinder;@JsonKey(name: "ehs") String? get ehs;@JsonKey(name: "geriatrics") String? get geriatrics;@JsonKey(name: "insurance") String? get insurance;@JsonKey(name: "ocmc") String? get ocmc;@JsonKey(name: "pharmacy") String? get pharmacy;@JsonKey(name: "plant_capacity") String? get plantCapacity;@JsonKey(name: "ssu") String? get ssu;@JsonKey(name: "contact_person") String? get contactPerson;@JsonKey(name: "contact_person_mobile") String? get contactPersonMobile;@JsonKey(name: "ambulance_category") String? get ambulanceCategory;@JsonKey(name: "ambulance_contact") String? get ambulanceContact;@JsonKey(name: "hdu_functional") dynamic get hduFunctional;@JsonKey(name: "hdu_sectioned") dynamic get hduSectioned;@JsonKey(name: "nicu_functional") dynamic get nicuFunctional;@JsonKey(name: "nicu_sectioned") dynamic get nicuSectioned;@JsonKey(name: "org_source") dynamic get orgSource;@JsonKey(name: "building_cost") dynamic get buildingCost;@JsonKey(name: "device_cost") dynamic get deviceCost;@JsonKey(name: "est_income") dynamic get estIncome;@JsonKey(name: "loan_org") dynamic get loanOrg;@JsonKey(name: "other_source") dynamic get otherSource;@JsonKey(name: "property_source") dynamic get propertySource;@JsonKey(name: "workforce_cost") dynamic get workforceCost;@JsonKey(name: "approvedate") DateTime? get approvedate;@JsonKey(name: "approveby") String? get approveby;@JsonKey(name: "service_type") ServiceType? get serviceType;@JsonKey(name: "ownership") int? get ownership;@JsonKey(name: "ownerships") Ownerships? get ownerships;@JsonKey(name: "level") int? get level;@JsonKey(name: "health_facility_level") HealthFacilityLevel? get healthFacilityLevel;@JsonKey(name: "oldlevel") int? get oldlevel;@JsonKey(name: "building_maps") String? get buildingMaps;@JsonKey(name: "hf_details") String? get hfDetails;@JsonKey(name: "iee_certs") dynamic get ieeCerts;@JsonKey(name: "mem_citizenships") dynamic get memCitizenships;@JsonKey(name: "org_articles") dynamic get orgArticles;@JsonKey(name: "org_perms") dynamic get orgPerms;@JsonKey(name: "reg_orgs") dynamic get regOrgs;@JsonKey(name: "service_fees") dynamic get serviceFees;@JsonKey(name: "tax_clears") dynamic get taxClears;@JsonKey(name: "vat_pans") dynamic get vatPans;@JsonKey(name: "hcode") dynamic get hcode;@JsonKey(name: "rtype") dynamic get rtype;
/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertiesCopyWith<Properties> get copyWith => _$PropertiesCopyWithImpl<Properties>(this as Properties, _$identity);

  /// Serializes this Properties to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Properties&&(identical(other.hfCode, hfCode) || other.hfCode == hfCode)&&(identical(other.type, type) || other.type == type)&&(identical(other.healthFacilityType, healthFacilityType) || other.healthFacilityType == healthFacilityType)&&(identical(other.authlevel, authlevel) || other.authlevel == authlevel)&&(identical(other.ftype, ftype) || other.ftype == ftype)&&(identical(other.opstatus, opstatus) || other.opstatus == opstatus)&&(identical(other.internet, internet) || other.internet == internet)&&(identical(other.renDate, renDate) || other.renDate == renDate)&&const DeepCollectionEquality().equals(other.sectioned, sectioned)&&(identical(other.functional, functional) || other.functional == functional)&&const DeepCollectionEquality().equals(other.icuSectioned, icuSectioned)&&const DeepCollectionEquality().equals(other.icuFunctional, icuFunctional)&&const DeepCollectionEquality().equals(other.ventilatorSectioned, ventilatorSectioned)&&const DeepCollectionEquality().equals(other.ventilatorFunctional, ventilatorFunctional)&&(identical(other.province, province) || other.province == province)&&(identical(other.district, district) || other.district == district)&&(identical(other.municipality, municipality) || other.municipality == municipality)&&(identical(other.ward, ward) || other.ward == ward)&&(identical(other.estdDate, estdDate) || other.estdDate == estdDate)&&(identical(other.validity, validity) || other.validity == validity)&&(identical(other.email, email) || other.email == email)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.oxygen, oxygen) || other.oxygen == oxygen)&&(identical(other.ambulance, ambulance) || other.ambulance == ambulance)&&(identical(other.concentrator, concentrator) || other.concentrator == concentrator)&&(identical(other.cylinder, cylinder) || other.cylinder == cylinder)&&(identical(other.ehs, ehs) || other.ehs == ehs)&&(identical(other.geriatrics, geriatrics) || other.geriatrics == geriatrics)&&(identical(other.insurance, insurance) || other.insurance == insurance)&&(identical(other.ocmc, ocmc) || other.ocmc == ocmc)&&(identical(other.pharmacy, pharmacy) || other.pharmacy == pharmacy)&&(identical(other.plantCapacity, plantCapacity) || other.plantCapacity == plantCapacity)&&(identical(other.ssu, ssu) || other.ssu == ssu)&&(identical(other.contactPerson, contactPerson) || other.contactPerson == contactPerson)&&(identical(other.contactPersonMobile, contactPersonMobile) || other.contactPersonMobile == contactPersonMobile)&&(identical(other.ambulanceCategory, ambulanceCategory) || other.ambulanceCategory == ambulanceCategory)&&(identical(other.ambulanceContact, ambulanceContact) || other.ambulanceContact == ambulanceContact)&&const DeepCollectionEquality().equals(other.hduFunctional, hduFunctional)&&const DeepCollectionEquality().equals(other.hduSectioned, hduSectioned)&&const DeepCollectionEquality().equals(other.nicuFunctional, nicuFunctional)&&const DeepCollectionEquality().equals(other.nicuSectioned, nicuSectioned)&&const DeepCollectionEquality().equals(other.orgSource, orgSource)&&const DeepCollectionEquality().equals(other.buildingCost, buildingCost)&&const DeepCollectionEquality().equals(other.deviceCost, deviceCost)&&const DeepCollectionEquality().equals(other.estIncome, estIncome)&&const DeepCollectionEquality().equals(other.loanOrg, loanOrg)&&const DeepCollectionEquality().equals(other.otherSource, otherSource)&&const DeepCollectionEquality().equals(other.propertySource, propertySource)&&const DeepCollectionEquality().equals(other.workforceCost, workforceCost)&&(identical(other.approvedate, approvedate) || other.approvedate == approvedate)&&(identical(other.approveby, approveby) || other.approveby == approveby)&&(identical(other.serviceType, serviceType) || other.serviceType == serviceType)&&(identical(other.ownership, ownership) || other.ownership == ownership)&&(identical(other.ownerships, ownerships) || other.ownerships == ownerships)&&(identical(other.level, level) || other.level == level)&&(identical(other.healthFacilityLevel, healthFacilityLevel) || other.healthFacilityLevel == healthFacilityLevel)&&(identical(other.oldlevel, oldlevel) || other.oldlevel == oldlevel)&&(identical(other.buildingMaps, buildingMaps) || other.buildingMaps == buildingMaps)&&(identical(other.hfDetails, hfDetails) || other.hfDetails == hfDetails)&&const DeepCollectionEquality().equals(other.ieeCerts, ieeCerts)&&const DeepCollectionEquality().equals(other.memCitizenships, memCitizenships)&&const DeepCollectionEquality().equals(other.orgArticles, orgArticles)&&const DeepCollectionEquality().equals(other.orgPerms, orgPerms)&&const DeepCollectionEquality().equals(other.regOrgs, regOrgs)&&const DeepCollectionEquality().equals(other.serviceFees, serviceFees)&&const DeepCollectionEquality().equals(other.taxClears, taxClears)&&const DeepCollectionEquality().equals(other.vatPans, vatPans)&&const DeepCollectionEquality().equals(other.hcode, hcode)&&const DeepCollectionEquality().equals(other.rtype, rtype));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,hfCode,type,healthFacilityType,authlevel,ftype,opstatus,internet,renDate,const DeepCollectionEquality().hash(sectioned),functional,const DeepCollectionEquality().hash(icuSectioned),const DeepCollectionEquality().hash(icuFunctional),const DeepCollectionEquality().hash(ventilatorSectioned),const DeepCollectionEquality().hash(ventilatorFunctional),province,district,municipality,ward,estdDate,validity,email,telephone,oxygen,ambulance,concentrator,cylinder,ehs,geriatrics,insurance,ocmc,pharmacy,plantCapacity,ssu,contactPerson,contactPersonMobile,ambulanceCategory,ambulanceContact,const DeepCollectionEquality().hash(hduFunctional),const DeepCollectionEquality().hash(hduSectioned),const DeepCollectionEquality().hash(nicuFunctional),const DeepCollectionEquality().hash(nicuSectioned),const DeepCollectionEquality().hash(orgSource),const DeepCollectionEquality().hash(buildingCost),const DeepCollectionEquality().hash(deviceCost),const DeepCollectionEquality().hash(estIncome),const DeepCollectionEquality().hash(loanOrg),const DeepCollectionEquality().hash(otherSource),const DeepCollectionEquality().hash(propertySource),const DeepCollectionEquality().hash(workforceCost),approvedate,approveby,serviceType,ownership,ownerships,level,healthFacilityLevel,oldlevel,buildingMaps,hfDetails,const DeepCollectionEquality().hash(ieeCerts),const DeepCollectionEquality().hash(memCitizenships),const DeepCollectionEquality().hash(orgArticles),const DeepCollectionEquality().hash(orgPerms),const DeepCollectionEquality().hash(regOrgs),const DeepCollectionEquality().hash(serviceFees),const DeepCollectionEquality().hash(taxClears),const DeepCollectionEquality().hash(vatPans),const DeepCollectionEquality().hash(hcode),const DeepCollectionEquality().hash(rtype)]);

@override
String toString() {
  return 'Properties(hfCode: $hfCode, type: $type, healthFacilityType: $healthFacilityType, authlevel: $authlevel, ftype: $ftype, opstatus: $opstatus, internet: $internet, renDate: $renDate, sectioned: $sectioned, functional: $functional, icuSectioned: $icuSectioned, icuFunctional: $icuFunctional, ventilatorSectioned: $ventilatorSectioned, ventilatorFunctional: $ventilatorFunctional, province: $province, district: $district, municipality: $municipality, ward: $ward, estdDate: $estdDate, validity: $validity, email: $email, telephone: $telephone, oxygen: $oxygen, ambulance: $ambulance, concentrator: $concentrator, cylinder: $cylinder, ehs: $ehs, geriatrics: $geriatrics, insurance: $insurance, ocmc: $ocmc, pharmacy: $pharmacy, plantCapacity: $plantCapacity, ssu: $ssu, contactPerson: $contactPerson, contactPersonMobile: $contactPersonMobile, ambulanceCategory: $ambulanceCategory, ambulanceContact: $ambulanceContact, hduFunctional: $hduFunctional, hduSectioned: $hduSectioned, nicuFunctional: $nicuFunctional, nicuSectioned: $nicuSectioned, orgSource: $orgSource, buildingCost: $buildingCost, deviceCost: $deviceCost, estIncome: $estIncome, loanOrg: $loanOrg, otherSource: $otherSource, propertySource: $propertySource, workforceCost: $workforceCost, approvedate: $approvedate, approveby: $approveby, serviceType: $serviceType, ownership: $ownership, ownerships: $ownerships, level: $level, healthFacilityLevel: $healthFacilityLevel, oldlevel: $oldlevel, buildingMaps: $buildingMaps, hfDetails: $hfDetails, ieeCerts: $ieeCerts, memCitizenships: $memCitizenships, orgArticles: $orgArticles, orgPerms: $orgPerms, regOrgs: $regOrgs, serviceFees: $serviceFees, taxClears: $taxClears, vatPans: $vatPans, hcode: $hcode, rtype: $rtype)';
}


}

/// @nodoc
abstract mixin class $PropertiesCopyWith<$Res>  {
  factory $PropertiesCopyWith(Properties value, $Res Function(Properties) _then) = _$PropertiesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "hfCode") int? hfCode,@JsonKey(name: "type") int? type,@JsonKey(name: "Health_facility_Type") HealthFacilityType? healthFacilityType,@JsonKey(name: "authlevel") String? authlevel,@JsonKey(name: "ftype") int? ftype,@JsonKey(name: "opstatus") String? opstatus,@JsonKey(name: "internet") String? internet,@JsonKey(name: "ren_date") String? renDate,@JsonKey(name: "sectioned") dynamic sectioned,@JsonKey(name: "functional") int? functional,@JsonKey(name: "icu_sectioned") dynamic icuSectioned,@JsonKey(name: "icu_functional") dynamic icuFunctional,@JsonKey(name: "ventilator_sectioned") dynamic ventilatorSectioned,@JsonKey(name: "ventilator_functional") dynamic ventilatorFunctional,@JsonKey(name: "province") Province? province,@JsonKey(name: "district") District? district,@JsonKey(name: "municipality") Municipality? municipality,@JsonKey(name: "ward") int? ward,@JsonKey(name: "estd_date") String? estdDate,@JsonKey(name: "validity") String? validity,@JsonKey(name: "email") String? email,@JsonKey(name: "telephone") String? telephone,@JsonKey(name: "oxygen") String? oxygen,@JsonKey(name: "ambulance") String? ambulance,@JsonKey(name: "concentrator") String? concentrator,@JsonKey(name: "cylinder") String? cylinder,@JsonKey(name: "ehs") String? ehs,@JsonKey(name: "geriatrics") String? geriatrics,@JsonKey(name: "insurance") String? insurance,@JsonKey(name: "ocmc") String? ocmc,@JsonKey(name: "pharmacy") String? pharmacy,@JsonKey(name: "plant_capacity") String? plantCapacity,@JsonKey(name: "ssu") String? ssu,@JsonKey(name: "contact_person") String? contactPerson,@JsonKey(name: "contact_person_mobile") String? contactPersonMobile,@JsonKey(name: "ambulance_category") String? ambulanceCategory,@JsonKey(name: "ambulance_contact") String? ambulanceContact,@JsonKey(name: "hdu_functional") dynamic hduFunctional,@JsonKey(name: "hdu_sectioned") dynamic hduSectioned,@JsonKey(name: "nicu_functional") dynamic nicuFunctional,@JsonKey(name: "nicu_sectioned") dynamic nicuSectioned,@JsonKey(name: "org_source") dynamic orgSource,@JsonKey(name: "building_cost") dynamic buildingCost,@JsonKey(name: "device_cost") dynamic deviceCost,@JsonKey(name: "est_income") dynamic estIncome,@JsonKey(name: "loan_org") dynamic loanOrg,@JsonKey(name: "other_source") dynamic otherSource,@JsonKey(name: "property_source") dynamic propertySource,@JsonKey(name: "workforce_cost") dynamic workforceCost,@JsonKey(name: "approvedate") DateTime? approvedate,@JsonKey(name: "approveby") String? approveby,@JsonKey(name: "service_type") ServiceType? serviceType,@JsonKey(name: "ownership") int? ownership,@JsonKey(name: "ownerships") Ownerships? ownerships,@JsonKey(name: "level") int? level,@JsonKey(name: "health_facility_level") HealthFacilityLevel? healthFacilityLevel,@JsonKey(name: "oldlevel") int? oldlevel,@JsonKey(name: "building_maps") String? buildingMaps,@JsonKey(name: "hf_details") String? hfDetails,@JsonKey(name: "iee_certs") dynamic ieeCerts,@JsonKey(name: "mem_citizenships") dynamic memCitizenships,@JsonKey(name: "org_articles") dynamic orgArticles,@JsonKey(name: "org_perms") dynamic orgPerms,@JsonKey(name: "reg_orgs") dynamic regOrgs,@JsonKey(name: "service_fees") dynamic serviceFees,@JsonKey(name: "tax_clears") dynamic taxClears,@JsonKey(name: "vat_pans") dynamic vatPans,@JsonKey(name: "hcode") dynamic hcode,@JsonKey(name: "rtype") dynamic rtype
});


$HealthFacilityTypeCopyWith<$Res>? get healthFacilityType;$ProvinceCopyWith<$Res>? get province;$DistrictCopyWith<$Res>? get district;$MunicipalityCopyWith<$Res>? get municipality;$ServiceTypeCopyWith<$Res>? get serviceType;$OwnershipsCopyWith<$Res>? get ownerships;$HealthFacilityLevelCopyWith<$Res>? get healthFacilityLevel;

}
/// @nodoc
class _$PropertiesCopyWithImpl<$Res>
    implements $PropertiesCopyWith<$Res> {
  _$PropertiesCopyWithImpl(this._self, this._then);

  final Properties _self;
  final $Res Function(Properties) _then;

/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hfCode = freezed,Object? type = freezed,Object? healthFacilityType = freezed,Object? authlevel = freezed,Object? ftype = freezed,Object? opstatus = freezed,Object? internet = freezed,Object? renDate = freezed,Object? sectioned = freezed,Object? functional = freezed,Object? icuSectioned = freezed,Object? icuFunctional = freezed,Object? ventilatorSectioned = freezed,Object? ventilatorFunctional = freezed,Object? province = freezed,Object? district = freezed,Object? municipality = freezed,Object? ward = freezed,Object? estdDate = freezed,Object? validity = freezed,Object? email = freezed,Object? telephone = freezed,Object? oxygen = freezed,Object? ambulance = freezed,Object? concentrator = freezed,Object? cylinder = freezed,Object? ehs = freezed,Object? geriatrics = freezed,Object? insurance = freezed,Object? ocmc = freezed,Object? pharmacy = freezed,Object? plantCapacity = freezed,Object? ssu = freezed,Object? contactPerson = freezed,Object? contactPersonMobile = freezed,Object? ambulanceCategory = freezed,Object? ambulanceContact = freezed,Object? hduFunctional = freezed,Object? hduSectioned = freezed,Object? nicuFunctional = freezed,Object? nicuSectioned = freezed,Object? orgSource = freezed,Object? buildingCost = freezed,Object? deviceCost = freezed,Object? estIncome = freezed,Object? loanOrg = freezed,Object? otherSource = freezed,Object? propertySource = freezed,Object? workforceCost = freezed,Object? approvedate = freezed,Object? approveby = freezed,Object? serviceType = freezed,Object? ownership = freezed,Object? ownerships = freezed,Object? level = freezed,Object? healthFacilityLevel = freezed,Object? oldlevel = freezed,Object? buildingMaps = freezed,Object? hfDetails = freezed,Object? ieeCerts = freezed,Object? memCitizenships = freezed,Object? orgArticles = freezed,Object? orgPerms = freezed,Object? regOrgs = freezed,Object? serviceFees = freezed,Object? taxClears = freezed,Object? vatPans = freezed,Object? hcode = freezed,Object? rtype = freezed,}) {
  return _then(_self.copyWith(
hfCode: freezed == hfCode ? _self.hfCode : hfCode // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int?,healthFacilityType: freezed == healthFacilityType ? _self.healthFacilityType : healthFacilityType // ignore: cast_nullable_to_non_nullable
as HealthFacilityType?,authlevel: freezed == authlevel ? _self.authlevel : authlevel // ignore: cast_nullable_to_non_nullable
as String?,ftype: freezed == ftype ? _self.ftype : ftype // ignore: cast_nullable_to_non_nullable
as int?,opstatus: freezed == opstatus ? _self.opstatus : opstatus // ignore: cast_nullable_to_non_nullable
as String?,internet: freezed == internet ? _self.internet : internet // ignore: cast_nullable_to_non_nullable
as String?,renDate: freezed == renDate ? _self.renDate : renDate // ignore: cast_nullable_to_non_nullable
as String?,sectioned: freezed == sectioned ? _self.sectioned : sectioned // ignore: cast_nullable_to_non_nullable
as dynamic,functional: freezed == functional ? _self.functional : functional // ignore: cast_nullable_to_non_nullable
as int?,icuSectioned: freezed == icuSectioned ? _self.icuSectioned : icuSectioned // ignore: cast_nullable_to_non_nullable
as dynamic,icuFunctional: freezed == icuFunctional ? _self.icuFunctional : icuFunctional // ignore: cast_nullable_to_non_nullable
as dynamic,ventilatorSectioned: freezed == ventilatorSectioned ? _self.ventilatorSectioned : ventilatorSectioned // ignore: cast_nullable_to_non_nullable
as dynamic,ventilatorFunctional: freezed == ventilatorFunctional ? _self.ventilatorFunctional : ventilatorFunctional // ignore: cast_nullable_to_non_nullable
as dynamic,province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as Province?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as District?,municipality: freezed == municipality ? _self.municipality : municipality // ignore: cast_nullable_to_non_nullable
as Municipality?,ward: freezed == ward ? _self.ward : ward // ignore: cast_nullable_to_non_nullable
as int?,estdDate: freezed == estdDate ? _self.estdDate : estdDate // ignore: cast_nullable_to_non_nullable
as String?,validity: freezed == validity ? _self.validity : validity // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,telephone: freezed == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String?,oxygen: freezed == oxygen ? _self.oxygen : oxygen // ignore: cast_nullable_to_non_nullable
as String?,ambulance: freezed == ambulance ? _self.ambulance : ambulance // ignore: cast_nullable_to_non_nullable
as String?,concentrator: freezed == concentrator ? _self.concentrator : concentrator // ignore: cast_nullable_to_non_nullable
as String?,cylinder: freezed == cylinder ? _self.cylinder : cylinder // ignore: cast_nullable_to_non_nullable
as String?,ehs: freezed == ehs ? _self.ehs : ehs // ignore: cast_nullable_to_non_nullable
as String?,geriatrics: freezed == geriatrics ? _self.geriatrics : geriatrics // ignore: cast_nullable_to_non_nullable
as String?,insurance: freezed == insurance ? _self.insurance : insurance // ignore: cast_nullable_to_non_nullable
as String?,ocmc: freezed == ocmc ? _self.ocmc : ocmc // ignore: cast_nullable_to_non_nullable
as String?,pharmacy: freezed == pharmacy ? _self.pharmacy : pharmacy // ignore: cast_nullable_to_non_nullable
as String?,plantCapacity: freezed == plantCapacity ? _self.plantCapacity : plantCapacity // ignore: cast_nullable_to_non_nullable
as String?,ssu: freezed == ssu ? _self.ssu : ssu // ignore: cast_nullable_to_non_nullable
as String?,contactPerson: freezed == contactPerson ? _self.contactPerson : contactPerson // ignore: cast_nullable_to_non_nullable
as String?,contactPersonMobile: freezed == contactPersonMobile ? _self.contactPersonMobile : contactPersonMobile // ignore: cast_nullable_to_non_nullable
as String?,ambulanceCategory: freezed == ambulanceCategory ? _self.ambulanceCategory : ambulanceCategory // ignore: cast_nullable_to_non_nullable
as String?,ambulanceContact: freezed == ambulanceContact ? _self.ambulanceContact : ambulanceContact // ignore: cast_nullable_to_non_nullable
as String?,hduFunctional: freezed == hduFunctional ? _self.hduFunctional : hduFunctional // ignore: cast_nullable_to_non_nullable
as dynamic,hduSectioned: freezed == hduSectioned ? _self.hduSectioned : hduSectioned // ignore: cast_nullable_to_non_nullable
as dynamic,nicuFunctional: freezed == nicuFunctional ? _self.nicuFunctional : nicuFunctional // ignore: cast_nullable_to_non_nullable
as dynamic,nicuSectioned: freezed == nicuSectioned ? _self.nicuSectioned : nicuSectioned // ignore: cast_nullable_to_non_nullable
as dynamic,orgSource: freezed == orgSource ? _self.orgSource : orgSource // ignore: cast_nullable_to_non_nullable
as dynamic,buildingCost: freezed == buildingCost ? _self.buildingCost : buildingCost // ignore: cast_nullable_to_non_nullable
as dynamic,deviceCost: freezed == deviceCost ? _self.deviceCost : deviceCost // ignore: cast_nullable_to_non_nullable
as dynamic,estIncome: freezed == estIncome ? _self.estIncome : estIncome // ignore: cast_nullable_to_non_nullable
as dynamic,loanOrg: freezed == loanOrg ? _self.loanOrg : loanOrg // ignore: cast_nullable_to_non_nullable
as dynamic,otherSource: freezed == otherSource ? _self.otherSource : otherSource // ignore: cast_nullable_to_non_nullable
as dynamic,propertySource: freezed == propertySource ? _self.propertySource : propertySource // ignore: cast_nullable_to_non_nullable
as dynamic,workforceCost: freezed == workforceCost ? _self.workforceCost : workforceCost // ignore: cast_nullable_to_non_nullable
as dynamic,approvedate: freezed == approvedate ? _self.approvedate : approvedate // ignore: cast_nullable_to_non_nullable
as DateTime?,approveby: freezed == approveby ? _self.approveby : approveby // ignore: cast_nullable_to_non_nullable
as String?,serviceType: freezed == serviceType ? _self.serviceType : serviceType // ignore: cast_nullable_to_non_nullable
as ServiceType?,ownership: freezed == ownership ? _self.ownership : ownership // ignore: cast_nullable_to_non_nullable
as int?,ownerships: freezed == ownerships ? _self.ownerships : ownerships // ignore: cast_nullable_to_non_nullable
as Ownerships?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,healthFacilityLevel: freezed == healthFacilityLevel ? _self.healthFacilityLevel : healthFacilityLevel // ignore: cast_nullable_to_non_nullable
as HealthFacilityLevel?,oldlevel: freezed == oldlevel ? _self.oldlevel : oldlevel // ignore: cast_nullable_to_non_nullable
as int?,buildingMaps: freezed == buildingMaps ? _self.buildingMaps : buildingMaps // ignore: cast_nullable_to_non_nullable
as String?,hfDetails: freezed == hfDetails ? _self.hfDetails : hfDetails // ignore: cast_nullable_to_non_nullable
as String?,ieeCerts: freezed == ieeCerts ? _self.ieeCerts : ieeCerts // ignore: cast_nullable_to_non_nullable
as dynamic,memCitizenships: freezed == memCitizenships ? _self.memCitizenships : memCitizenships // ignore: cast_nullable_to_non_nullable
as dynamic,orgArticles: freezed == orgArticles ? _self.orgArticles : orgArticles // ignore: cast_nullable_to_non_nullable
as dynamic,orgPerms: freezed == orgPerms ? _self.orgPerms : orgPerms // ignore: cast_nullable_to_non_nullable
as dynamic,regOrgs: freezed == regOrgs ? _self.regOrgs : regOrgs // ignore: cast_nullable_to_non_nullable
as dynamic,serviceFees: freezed == serviceFees ? _self.serviceFees : serviceFees // ignore: cast_nullable_to_non_nullable
as dynamic,taxClears: freezed == taxClears ? _self.taxClears : taxClears // ignore: cast_nullable_to_non_nullable
as dynamic,vatPans: freezed == vatPans ? _self.vatPans : vatPans // ignore: cast_nullable_to_non_nullable
as dynamic,hcode: freezed == hcode ? _self.hcode : hcode // ignore: cast_nullable_to_non_nullable
as dynamic,rtype: freezed == rtype ? _self.rtype : rtype // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthFacilityTypeCopyWith<$Res>? get healthFacilityType {
    if (_self.healthFacilityType == null) {
    return null;
  }

  return $HealthFacilityTypeCopyWith<$Res>(_self.healthFacilityType!, (value) {
    return _then(_self.copyWith(healthFacilityType: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvinceCopyWith<$Res>? get province {
    if (_self.province == null) {
    return null;
  }

  return $ProvinceCopyWith<$Res>(_self.province!, (value) {
    return _then(_self.copyWith(province: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistrictCopyWith<$Res>? get district {
    if (_self.district == null) {
    return null;
  }

  return $DistrictCopyWith<$Res>(_self.district!, (value) {
    return _then(_self.copyWith(district: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MunicipalityCopyWith<$Res>? get municipality {
    if (_self.municipality == null) {
    return null;
  }

  return $MunicipalityCopyWith<$Res>(_self.municipality!, (value) {
    return _then(_self.copyWith(municipality: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceTypeCopyWith<$Res>? get serviceType {
    if (_self.serviceType == null) {
    return null;
  }

  return $ServiceTypeCopyWith<$Res>(_self.serviceType!, (value) {
    return _then(_self.copyWith(serviceType: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnershipsCopyWith<$Res>? get ownerships {
    if (_self.ownerships == null) {
    return null;
  }

  return $OwnershipsCopyWith<$Res>(_self.ownerships!, (value) {
    return _then(_self.copyWith(ownerships: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthFacilityLevelCopyWith<$Res>? get healthFacilityLevel {
    if (_self.healthFacilityLevel == null) {
    return null;
  }

  return $HealthFacilityLevelCopyWith<$Res>(_self.healthFacilityLevel!, (value) {
    return _then(_self.copyWith(healthFacilityLevel: value));
  });
}
}


/// Adds pattern-matching-related methods to [Properties].
extension PropertiesPatterns on Properties {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Properties value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Properties() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Properties value)  $default,){
final _that = this;
switch (_that) {
case _Properties():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Properties value)?  $default,){
final _that = this;
switch (_that) {
case _Properties() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "hfCode")  int? hfCode, @JsonKey(name: "type")  int? type, @JsonKey(name: "Health_facility_Type")  HealthFacilityType? healthFacilityType, @JsonKey(name: "authlevel")  String? authlevel, @JsonKey(name: "ftype")  int? ftype, @JsonKey(name: "opstatus")  String? opstatus, @JsonKey(name: "internet")  String? internet, @JsonKey(name: "ren_date")  String? renDate, @JsonKey(name: "sectioned")  dynamic sectioned, @JsonKey(name: "functional")  int? functional, @JsonKey(name: "icu_sectioned")  dynamic icuSectioned, @JsonKey(name: "icu_functional")  dynamic icuFunctional, @JsonKey(name: "ventilator_sectioned")  dynamic ventilatorSectioned, @JsonKey(name: "ventilator_functional")  dynamic ventilatorFunctional, @JsonKey(name: "province")  Province? province, @JsonKey(name: "district")  District? district, @JsonKey(name: "municipality")  Municipality? municipality, @JsonKey(name: "ward")  int? ward, @JsonKey(name: "estd_date")  String? estdDate, @JsonKey(name: "validity")  String? validity, @JsonKey(name: "email")  String? email, @JsonKey(name: "telephone")  String? telephone, @JsonKey(name: "oxygen")  String? oxygen, @JsonKey(name: "ambulance")  String? ambulance, @JsonKey(name: "concentrator")  String? concentrator, @JsonKey(name: "cylinder")  String? cylinder, @JsonKey(name: "ehs")  String? ehs, @JsonKey(name: "geriatrics")  String? geriatrics, @JsonKey(name: "insurance")  String? insurance, @JsonKey(name: "ocmc")  String? ocmc, @JsonKey(name: "pharmacy")  String? pharmacy, @JsonKey(name: "plant_capacity")  String? plantCapacity, @JsonKey(name: "ssu")  String? ssu, @JsonKey(name: "contact_person")  String? contactPerson, @JsonKey(name: "contact_person_mobile")  String? contactPersonMobile, @JsonKey(name: "ambulance_category")  String? ambulanceCategory, @JsonKey(name: "ambulance_contact")  String? ambulanceContact, @JsonKey(name: "hdu_functional")  dynamic hduFunctional, @JsonKey(name: "hdu_sectioned")  dynamic hduSectioned, @JsonKey(name: "nicu_functional")  dynamic nicuFunctional, @JsonKey(name: "nicu_sectioned")  dynamic nicuSectioned, @JsonKey(name: "org_source")  dynamic orgSource, @JsonKey(name: "building_cost")  dynamic buildingCost, @JsonKey(name: "device_cost")  dynamic deviceCost, @JsonKey(name: "est_income")  dynamic estIncome, @JsonKey(name: "loan_org")  dynamic loanOrg, @JsonKey(name: "other_source")  dynamic otherSource, @JsonKey(name: "property_source")  dynamic propertySource, @JsonKey(name: "workforce_cost")  dynamic workforceCost, @JsonKey(name: "approvedate")  DateTime? approvedate, @JsonKey(name: "approveby")  String? approveby, @JsonKey(name: "service_type")  ServiceType? serviceType, @JsonKey(name: "ownership")  int? ownership, @JsonKey(name: "ownerships")  Ownerships? ownerships, @JsonKey(name: "level")  int? level, @JsonKey(name: "health_facility_level")  HealthFacilityLevel? healthFacilityLevel, @JsonKey(name: "oldlevel")  int? oldlevel, @JsonKey(name: "building_maps")  String? buildingMaps, @JsonKey(name: "hf_details")  String? hfDetails, @JsonKey(name: "iee_certs")  dynamic ieeCerts, @JsonKey(name: "mem_citizenships")  dynamic memCitizenships, @JsonKey(name: "org_articles")  dynamic orgArticles, @JsonKey(name: "org_perms")  dynamic orgPerms, @JsonKey(name: "reg_orgs")  dynamic regOrgs, @JsonKey(name: "service_fees")  dynamic serviceFees, @JsonKey(name: "tax_clears")  dynamic taxClears, @JsonKey(name: "vat_pans")  dynamic vatPans, @JsonKey(name: "hcode")  dynamic hcode, @JsonKey(name: "rtype")  dynamic rtype)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Properties() when $default != null:
return $default(_that.hfCode,_that.type,_that.healthFacilityType,_that.authlevel,_that.ftype,_that.opstatus,_that.internet,_that.renDate,_that.sectioned,_that.functional,_that.icuSectioned,_that.icuFunctional,_that.ventilatorSectioned,_that.ventilatorFunctional,_that.province,_that.district,_that.municipality,_that.ward,_that.estdDate,_that.validity,_that.email,_that.telephone,_that.oxygen,_that.ambulance,_that.concentrator,_that.cylinder,_that.ehs,_that.geriatrics,_that.insurance,_that.ocmc,_that.pharmacy,_that.plantCapacity,_that.ssu,_that.contactPerson,_that.contactPersonMobile,_that.ambulanceCategory,_that.ambulanceContact,_that.hduFunctional,_that.hduSectioned,_that.nicuFunctional,_that.nicuSectioned,_that.orgSource,_that.buildingCost,_that.deviceCost,_that.estIncome,_that.loanOrg,_that.otherSource,_that.propertySource,_that.workforceCost,_that.approvedate,_that.approveby,_that.serviceType,_that.ownership,_that.ownerships,_that.level,_that.healthFacilityLevel,_that.oldlevel,_that.buildingMaps,_that.hfDetails,_that.ieeCerts,_that.memCitizenships,_that.orgArticles,_that.orgPerms,_that.regOrgs,_that.serviceFees,_that.taxClears,_that.vatPans,_that.hcode,_that.rtype);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "hfCode")  int? hfCode, @JsonKey(name: "type")  int? type, @JsonKey(name: "Health_facility_Type")  HealthFacilityType? healthFacilityType, @JsonKey(name: "authlevel")  String? authlevel, @JsonKey(name: "ftype")  int? ftype, @JsonKey(name: "opstatus")  String? opstatus, @JsonKey(name: "internet")  String? internet, @JsonKey(name: "ren_date")  String? renDate, @JsonKey(name: "sectioned")  dynamic sectioned, @JsonKey(name: "functional")  int? functional, @JsonKey(name: "icu_sectioned")  dynamic icuSectioned, @JsonKey(name: "icu_functional")  dynamic icuFunctional, @JsonKey(name: "ventilator_sectioned")  dynamic ventilatorSectioned, @JsonKey(name: "ventilator_functional")  dynamic ventilatorFunctional, @JsonKey(name: "province")  Province? province, @JsonKey(name: "district")  District? district, @JsonKey(name: "municipality")  Municipality? municipality, @JsonKey(name: "ward")  int? ward, @JsonKey(name: "estd_date")  String? estdDate, @JsonKey(name: "validity")  String? validity, @JsonKey(name: "email")  String? email, @JsonKey(name: "telephone")  String? telephone, @JsonKey(name: "oxygen")  String? oxygen, @JsonKey(name: "ambulance")  String? ambulance, @JsonKey(name: "concentrator")  String? concentrator, @JsonKey(name: "cylinder")  String? cylinder, @JsonKey(name: "ehs")  String? ehs, @JsonKey(name: "geriatrics")  String? geriatrics, @JsonKey(name: "insurance")  String? insurance, @JsonKey(name: "ocmc")  String? ocmc, @JsonKey(name: "pharmacy")  String? pharmacy, @JsonKey(name: "plant_capacity")  String? plantCapacity, @JsonKey(name: "ssu")  String? ssu, @JsonKey(name: "contact_person")  String? contactPerson, @JsonKey(name: "contact_person_mobile")  String? contactPersonMobile, @JsonKey(name: "ambulance_category")  String? ambulanceCategory, @JsonKey(name: "ambulance_contact")  String? ambulanceContact, @JsonKey(name: "hdu_functional")  dynamic hduFunctional, @JsonKey(name: "hdu_sectioned")  dynamic hduSectioned, @JsonKey(name: "nicu_functional")  dynamic nicuFunctional, @JsonKey(name: "nicu_sectioned")  dynamic nicuSectioned, @JsonKey(name: "org_source")  dynamic orgSource, @JsonKey(name: "building_cost")  dynamic buildingCost, @JsonKey(name: "device_cost")  dynamic deviceCost, @JsonKey(name: "est_income")  dynamic estIncome, @JsonKey(name: "loan_org")  dynamic loanOrg, @JsonKey(name: "other_source")  dynamic otherSource, @JsonKey(name: "property_source")  dynamic propertySource, @JsonKey(name: "workforce_cost")  dynamic workforceCost, @JsonKey(name: "approvedate")  DateTime? approvedate, @JsonKey(name: "approveby")  String? approveby, @JsonKey(name: "service_type")  ServiceType? serviceType, @JsonKey(name: "ownership")  int? ownership, @JsonKey(name: "ownerships")  Ownerships? ownerships, @JsonKey(name: "level")  int? level, @JsonKey(name: "health_facility_level")  HealthFacilityLevel? healthFacilityLevel, @JsonKey(name: "oldlevel")  int? oldlevel, @JsonKey(name: "building_maps")  String? buildingMaps, @JsonKey(name: "hf_details")  String? hfDetails, @JsonKey(name: "iee_certs")  dynamic ieeCerts, @JsonKey(name: "mem_citizenships")  dynamic memCitizenships, @JsonKey(name: "org_articles")  dynamic orgArticles, @JsonKey(name: "org_perms")  dynamic orgPerms, @JsonKey(name: "reg_orgs")  dynamic regOrgs, @JsonKey(name: "service_fees")  dynamic serviceFees, @JsonKey(name: "tax_clears")  dynamic taxClears, @JsonKey(name: "vat_pans")  dynamic vatPans, @JsonKey(name: "hcode")  dynamic hcode, @JsonKey(name: "rtype")  dynamic rtype)  $default,) {final _that = this;
switch (_that) {
case _Properties():
return $default(_that.hfCode,_that.type,_that.healthFacilityType,_that.authlevel,_that.ftype,_that.opstatus,_that.internet,_that.renDate,_that.sectioned,_that.functional,_that.icuSectioned,_that.icuFunctional,_that.ventilatorSectioned,_that.ventilatorFunctional,_that.province,_that.district,_that.municipality,_that.ward,_that.estdDate,_that.validity,_that.email,_that.telephone,_that.oxygen,_that.ambulance,_that.concentrator,_that.cylinder,_that.ehs,_that.geriatrics,_that.insurance,_that.ocmc,_that.pharmacy,_that.plantCapacity,_that.ssu,_that.contactPerson,_that.contactPersonMobile,_that.ambulanceCategory,_that.ambulanceContact,_that.hduFunctional,_that.hduSectioned,_that.nicuFunctional,_that.nicuSectioned,_that.orgSource,_that.buildingCost,_that.deviceCost,_that.estIncome,_that.loanOrg,_that.otherSource,_that.propertySource,_that.workforceCost,_that.approvedate,_that.approveby,_that.serviceType,_that.ownership,_that.ownerships,_that.level,_that.healthFacilityLevel,_that.oldlevel,_that.buildingMaps,_that.hfDetails,_that.ieeCerts,_that.memCitizenships,_that.orgArticles,_that.orgPerms,_that.regOrgs,_that.serviceFees,_that.taxClears,_that.vatPans,_that.hcode,_that.rtype);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "hfCode")  int? hfCode, @JsonKey(name: "type")  int? type, @JsonKey(name: "Health_facility_Type")  HealthFacilityType? healthFacilityType, @JsonKey(name: "authlevel")  String? authlevel, @JsonKey(name: "ftype")  int? ftype, @JsonKey(name: "opstatus")  String? opstatus, @JsonKey(name: "internet")  String? internet, @JsonKey(name: "ren_date")  String? renDate, @JsonKey(name: "sectioned")  dynamic sectioned, @JsonKey(name: "functional")  int? functional, @JsonKey(name: "icu_sectioned")  dynamic icuSectioned, @JsonKey(name: "icu_functional")  dynamic icuFunctional, @JsonKey(name: "ventilator_sectioned")  dynamic ventilatorSectioned, @JsonKey(name: "ventilator_functional")  dynamic ventilatorFunctional, @JsonKey(name: "province")  Province? province, @JsonKey(name: "district")  District? district, @JsonKey(name: "municipality")  Municipality? municipality, @JsonKey(name: "ward")  int? ward, @JsonKey(name: "estd_date")  String? estdDate, @JsonKey(name: "validity")  String? validity, @JsonKey(name: "email")  String? email, @JsonKey(name: "telephone")  String? telephone, @JsonKey(name: "oxygen")  String? oxygen, @JsonKey(name: "ambulance")  String? ambulance, @JsonKey(name: "concentrator")  String? concentrator, @JsonKey(name: "cylinder")  String? cylinder, @JsonKey(name: "ehs")  String? ehs, @JsonKey(name: "geriatrics")  String? geriatrics, @JsonKey(name: "insurance")  String? insurance, @JsonKey(name: "ocmc")  String? ocmc, @JsonKey(name: "pharmacy")  String? pharmacy, @JsonKey(name: "plant_capacity")  String? plantCapacity, @JsonKey(name: "ssu")  String? ssu, @JsonKey(name: "contact_person")  String? contactPerson, @JsonKey(name: "contact_person_mobile")  String? contactPersonMobile, @JsonKey(name: "ambulance_category")  String? ambulanceCategory, @JsonKey(name: "ambulance_contact")  String? ambulanceContact, @JsonKey(name: "hdu_functional")  dynamic hduFunctional, @JsonKey(name: "hdu_sectioned")  dynamic hduSectioned, @JsonKey(name: "nicu_functional")  dynamic nicuFunctional, @JsonKey(name: "nicu_sectioned")  dynamic nicuSectioned, @JsonKey(name: "org_source")  dynamic orgSource, @JsonKey(name: "building_cost")  dynamic buildingCost, @JsonKey(name: "device_cost")  dynamic deviceCost, @JsonKey(name: "est_income")  dynamic estIncome, @JsonKey(name: "loan_org")  dynamic loanOrg, @JsonKey(name: "other_source")  dynamic otherSource, @JsonKey(name: "property_source")  dynamic propertySource, @JsonKey(name: "workforce_cost")  dynamic workforceCost, @JsonKey(name: "approvedate")  DateTime? approvedate, @JsonKey(name: "approveby")  String? approveby, @JsonKey(name: "service_type")  ServiceType? serviceType, @JsonKey(name: "ownership")  int? ownership, @JsonKey(name: "ownerships")  Ownerships? ownerships, @JsonKey(name: "level")  int? level, @JsonKey(name: "health_facility_level")  HealthFacilityLevel? healthFacilityLevel, @JsonKey(name: "oldlevel")  int? oldlevel, @JsonKey(name: "building_maps")  String? buildingMaps, @JsonKey(name: "hf_details")  String? hfDetails, @JsonKey(name: "iee_certs")  dynamic ieeCerts, @JsonKey(name: "mem_citizenships")  dynamic memCitizenships, @JsonKey(name: "org_articles")  dynamic orgArticles, @JsonKey(name: "org_perms")  dynamic orgPerms, @JsonKey(name: "reg_orgs")  dynamic regOrgs, @JsonKey(name: "service_fees")  dynamic serviceFees, @JsonKey(name: "tax_clears")  dynamic taxClears, @JsonKey(name: "vat_pans")  dynamic vatPans, @JsonKey(name: "hcode")  dynamic hcode, @JsonKey(name: "rtype")  dynamic rtype)?  $default,) {final _that = this;
switch (_that) {
case _Properties() when $default != null:
return $default(_that.hfCode,_that.type,_that.healthFacilityType,_that.authlevel,_that.ftype,_that.opstatus,_that.internet,_that.renDate,_that.sectioned,_that.functional,_that.icuSectioned,_that.icuFunctional,_that.ventilatorSectioned,_that.ventilatorFunctional,_that.province,_that.district,_that.municipality,_that.ward,_that.estdDate,_that.validity,_that.email,_that.telephone,_that.oxygen,_that.ambulance,_that.concentrator,_that.cylinder,_that.ehs,_that.geriatrics,_that.insurance,_that.ocmc,_that.pharmacy,_that.plantCapacity,_that.ssu,_that.contactPerson,_that.contactPersonMobile,_that.ambulanceCategory,_that.ambulanceContact,_that.hduFunctional,_that.hduSectioned,_that.nicuFunctional,_that.nicuSectioned,_that.orgSource,_that.buildingCost,_that.deviceCost,_that.estIncome,_that.loanOrg,_that.otherSource,_that.propertySource,_that.workforceCost,_that.approvedate,_that.approveby,_that.serviceType,_that.ownership,_that.ownerships,_that.level,_that.healthFacilityLevel,_that.oldlevel,_that.buildingMaps,_that.hfDetails,_that.ieeCerts,_that.memCitizenships,_that.orgArticles,_that.orgPerms,_that.regOrgs,_that.serviceFees,_that.taxClears,_that.vatPans,_that.hcode,_that.rtype);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Properties implements Properties {
  const _Properties({@JsonKey(name: "hfCode") this.hfCode, @JsonKey(name: "type") this.type, @JsonKey(name: "Health_facility_Type") this.healthFacilityType, @JsonKey(name: "authlevel") this.authlevel, @JsonKey(name: "ftype") this.ftype, @JsonKey(name: "opstatus") this.opstatus, @JsonKey(name: "internet") this.internet, @JsonKey(name: "ren_date") this.renDate, @JsonKey(name: "sectioned") this.sectioned, @JsonKey(name: "functional") this.functional, @JsonKey(name: "icu_sectioned") this.icuSectioned, @JsonKey(name: "icu_functional") this.icuFunctional, @JsonKey(name: "ventilator_sectioned") this.ventilatorSectioned, @JsonKey(name: "ventilator_functional") this.ventilatorFunctional, @JsonKey(name: "province") this.province, @JsonKey(name: "district") this.district, @JsonKey(name: "municipality") this.municipality, @JsonKey(name: "ward") this.ward, @JsonKey(name: "estd_date") this.estdDate, @JsonKey(name: "validity") this.validity, @JsonKey(name: "email") this.email, @JsonKey(name: "telephone") this.telephone, @JsonKey(name: "oxygen") this.oxygen, @JsonKey(name: "ambulance") this.ambulance, @JsonKey(name: "concentrator") this.concentrator, @JsonKey(name: "cylinder") this.cylinder, @JsonKey(name: "ehs") this.ehs, @JsonKey(name: "geriatrics") this.geriatrics, @JsonKey(name: "insurance") this.insurance, @JsonKey(name: "ocmc") this.ocmc, @JsonKey(name: "pharmacy") this.pharmacy, @JsonKey(name: "plant_capacity") this.plantCapacity, @JsonKey(name: "ssu") this.ssu, @JsonKey(name: "contact_person") this.contactPerson, @JsonKey(name: "contact_person_mobile") this.contactPersonMobile, @JsonKey(name: "ambulance_category") this.ambulanceCategory, @JsonKey(name: "ambulance_contact") this.ambulanceContact, @JsonKey(name: "hdu_functional") this.hduFunctional, @JsonKey(name: "hdu_sectioned") this.hduSectioned, @JsonKey(name: "nicu_functional") this.nicuFunctional, @JsonKey(name: "nicu_sectioned") this.nicuSectioned, @JsonKey(name: "org_source") this.orgSource, @JsonKey(name: "building_cost") this.buildingCost, @JsonKey(name: "device_cost") this.deviceCost, @JsonKey(name: "est_income") this.estIncome, @JsonKey(name: "loan_org") this.loanOrg, @JsonKey(name: "other_source") this.otherSource, @JsonKey(name: "property_source") this.propertySource, @JsonKey(name: "workforce_cost") this.workforceCost, @JsonKey(name: "approvedate") this.approvedate, @JsonKey(name: "approveby") this.approveby, @JsonKey(name: "service_type") this.serviceType, @JsonKey(name: "ownership") this.ownership, @JsonKey(name: "ownerships") this.ownerships, @JsonKey(name: "level") this.level, @JsonKey(name: "health_facility_level") this.healthFacilityLevel, @JsonKey(name: "oldlevel") this.oldlevel, @JsonKey(name: "building_maps") this.buildingMaps, @JsonKey(name: "hf_details") this.hfDetails, @JsonKey(name: "iee_certs") this.ieeCerts, @JsonKey(name: "mem_citizenships") this.memCitizenships, @JsonKey(name: "org_articles") this.orgArticles, @JsonKey(name: "org_perms") this.orgPerms, @JsonKey(name: "reg_orgs") this.regOrgs, @JsonKey(name: "service_fees") this.serviceFees, @JsonKey(name: "tax_clears") this.taxClears, @JsonKey(name: "vat_pans") this.vatPans, @JsonKey(name: "hcode") this.hcode, @JsonKey(name: "rtype") this.rtype});
  factory _Properties.fromJson(Map<String, dynamic> json) => _$PropertiesFromJson(json);

@override@JsonKey(name: "hfCode") final  int? hfCode;
@override@JsonKey(name: "type") final  int? type;
@override@JsonKey(name: "Health_facility_Type") final  HealthFacilityType? healthFacilityType;
@override@JsonKey(name: "authlevel") final  String? authlevel;
@override@JsonKey(name: "ftype") final  int? ftype;
@override@JsonKey(name: "opstatus") final  String? opstatus;
@override@JsonKey(name: "internet") final  String? internet;
@override@JsonKey(name: "ren_date") final  String? renDate;
@override@JsonKey(name: "sectioned") final  dynamic sectioned;
@override@JsonKey(name: "functional") final  int? functional;
@override@JsonKey(name: "icu_sectioned") final  dynamic icuSectioned;
@override@JsonKey(name: "icu_functional") final  dynamic icuFunctional;
@override@JsonKey(name: "ventilator_sectioned") final  dynamic ventilatorSectioned;
@override@JsonKey(name: "ventilator_functional") final  dynamic ventilatorFunctional;
@override@JsonKey(name: "province") final  Province? province;
@override@JsonKey(name: "district") final  District? district;
@override@JsonKey(name: "municipality") final  Municipality? municipality;
@override@JsonKey(name: "ward") final  int? ward;
@override@JsonKey(name: "estd_date") final  String? estdDate;
@override@JsonKey(name: "validity") final  String? validity;
@override@JsonKey(name: "email") final  String? email;
@override@JsonKey(name: "telephone") final  String? telephone;
@override@JsonKey(name: "oxygen") final  String? oxygen;
@override@JsonKey(name: "ambulance") final  String? ambulance;
@override@JsonKey(name: "concentrator") final  String? concentrator;
@override@JsonKey(name: "cylinder") final  String? cylinder;
@override@JsonKey(name: "ehs") final  String? ehs;
@override@JsonKey(name: "geriatrics") final  String? geriatrics;
@override@JsonKey(name: "insurance") final  String? insurance;
@override@JsonKey(name: "ocmc") final  String? ocmc;
@override@JsonKey(name: "pharmacy") final  String? pharmacy;
@override@JsonKey(name: "plant_capacity") final  String? plantCapacity;
@override@JsonKey(name: "ssu") final  String? ssu;
@override@JsonKey(name: "contact_person") final  String? contactPerson;
@override@JsonKey(name: "contact_person_mobile") final  String? contactPersonMobile;
@override@JsonKey(name: "ambulance_category") final  String? ambulanceCategory;
@override@JsonKey(name: "ambulance_contact") final  String? ambulanceContact;
@override@JsonKey(name: "hdu_functional") final  dynamic hduFunctional;
@override@JsonKey(name: "hdu_sectioned") final  dynamic hduSectioned;
@override@JsonKey(name: "nicu_functional") final  dynamic nicuFunctional;
@override@JsonKey(name: "nicu_sectioned") final  dynamic nicuSectioned;
@override@JsonKey(name: "org_source") final  dynamic orgSource;
@override@JsonKey(name: "building_cost") final  dynamic buildingCost;
@override@JsonKey(name: "device_cost") final  dynamic deviceCost;
@override@JsonKey(name: "est_income") final  dynamic estIncome;
@override@JsonKey(name: "loan_org") final  dynamic loanOrg;
@override@JsonKey(name: "other_source") final  dynamic otherSource;
@override@JsonKey(name: "property_source") final  dynamic propertySource;
@override@JsonKey(name: "workforce_cost") final  dynamic workforceCost;
@override@JsonKey(name: "approvedate") final  DateTime? approvedate;
@override@JsonKey(name: "approveby") final  String? approveby;
@override@JsonKey(name: "service_type") final  ServiceType? serviceType;
@override@JsonKey(name: "ownership") final  int? ownership;
@override@JsonKey(name: "ownerships") final  Ownerships? ownerships;
@override@JsonKey(name: "level") final  int? level;
@override@JsonKey(name: "health_facility_level") final  HealthFacilityLevel? healthFacilityLevel;
@override@JsonKey(name: "oldlevel") final  int? oldlevel;
@override@JsonKey(name: "building_maps") final  String? buildingMaps;
@override@JsonKey(name: "hf_details") final  String? hfDetails;
@override@JsonKey(name: "iee_certs") final  dynamic ieeCerts;
@override@JsonKey(name: "mem_citizenships") final  dynamic memCitizenships;
@override@JsonKey(name: "org_articles") final  dynamic orgArticles;
@override@JsonKey(name: "org_perms") final  dynamic orgPerms;
@override@JsonKey(name: "reg_orgs") final  dynamic regOrgs;
@override@JsonKey(name: "service_fees") final  dynamic serviceFees;
@override@JsonKey(name: "tax_clears") final  dynamic taxClears;
@override@JsonKey(name: "vat_pans") final  dynamic vatPans;
@override@JsonKey(name: "hcode") final  dynamic hcode;
@override@JsonKey(name: "rtype") final  dynamic rtype;

/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertiesCopyWith<_Properties> get copyWith => __$PropertiesCopyWithImpl<_Properties>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PropertiesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Properties&&(identical(other.hfCode, hfCode) || other.hfCode == hfCode)&&(identical(other.type, type) || other.type == type)&&(identical(other.healthFacilityType, healthFacilityType) || other.healthFacilityType == healthFacilityType)&&(identical(other.authlevel, authlevel) || other.authlevel == authlevel)&&(identical(other.ftype, ftype) || other.ftype == ftype)&&(identical(other.opstatus, opstatus) || other.opstatus == opstatus)&&(identical(other.internet, internet) || other.internet == internet)&&(identical(other.renDate, renDate) || other.renDate == renDate)&&const DeepCollectionEquality().equals(other.sectioned, sectioned)&&(identical(other.functional, functional) || other.functional == functional)&&const DeepCollectionEquality().equals(other.icuSectioned, icuSectioned)&&const DeepCollectionEquality().equals(other.icuFunctional, icuFunctional)&&const DeepCollectionEquality().equals(other.ventilatorSectioned, ventilatorSectioned)&&const DeepCollectionEquality().equals(other.ventilatorFunctional, ventilatorFunctional)&&(identical(other.province, province) || other.province == province)&&(identical(other.district, district) || other.district == district)&&(identical(other.municipality, municipality) || other.municipality == municipality)&&(identical(other.ward, ward) || other.ward == ward)&&(identical(other.estdDate, estdDate) || other.estdDate == estdDate)&&(identical(other.validity, validity) || other.validity == validity)&&(identical(other.email, email) || other.email == email)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.oxygen, oxygen) || other.oxygen == oxygen)&&(identical(other.ambulance, ambulance) || other.ambulance == ambulance)&&(identical(other.concentrator, concentrator) || other.concentrator == concentrator)&&(identical(other.cylinder, cylinder) || other.cylinder == cylinder)&&(identical(other.ehs, ehs) || other.ehs == ehs)&&(identical(other.geriatrics, geriatrics) || other.geriatrics == geriatrics)&&(identical(other.insurance, insurance) || other.insurance == insurance)&&(identical(other.ocmc, ocmc) || other.ocmc == ocmc)&&(identical(other.pharmacy, pharmacy) || other.pharmacy == pharmacy)&&(identical(other.plantCapacity, plantCapacity) || other.plantCapacity == plantCapacity)&&(identical(other.ssu, ssu) || other.ssu == ssu)&&(identical(other.contactPerson, contactPerson) || other.contactPerson == contactPerson)&&(identical(other.contactPersonMobile, contactPersonMobile) || other.contactPersonMobile == contactPersonMobile)&&(identical(other.ambulanceCategory, ambulanceCategory) || other.ambulanceCategory == ambulanceCategory)&&(identical(other.ambulanceContact, ambulanceContact) || other.ambulanceContact == ambulanceContact)&&const DeepCollectionEquality().equals(other.hduFunctional, hduFunctional)&&const DeepCollectionEquality().equals(other.hduSectioned, hduSectioned)&&const DeepCollectionEquality().equals(other.nicuFunctional, nicuFunctional)&&const DeepCollectionEquality().equals(other.nicuSectioned, nicuSectioned)&&const DeepCollectionEquality().equals(other.orgSource, orgSource)&&const DeepCollectionEquality().equals(other.buildingCost, buildingCost)&&const DeepCollectionEquality().equals(other.deviceCost, deviceCost)&&const DeepCollectionEquality().equals(other.estIncome, estIncome)&&const DeepCollectionEquality().equals(other.loanOrg, loanOrg)&&const DeepCollectionEquality().equals(other.otherSource, otherSource)&&const DeepCollectionEquality().equals(other.propertySource, propertySource)&&const DeepCollectionEquality().equals(other.workforceCost, workforceCost)&&(identical(other.approvedate, approvedate) || other.approvedate == approvedate)&&(identical(other.approveby, approveby) || other.approveby == approveby)&&(identical(other.serviceType, serviceType) || other.serviceType == serviceType)&&(identical(other.ownership, ownership) || other.ownership == ownership)&&(identical(other.ownerships, ownerships) || other.ownerships == ownerships)&&(identical(other.level, level) || other.level == level)&&(identical(other.healthFacilityLevel, healthFacilityLevel) || other.healthFacilityLevel == healthFacilityLevel)&&(identical(other.oldlevel, oldlevel) || other.oldlevel == oldlevel)&&(identical(other.buildingMaps, buildingMaps) || other.buildingMaps == buildingMaps)&&(identical(other.hfDetails, hfDetails) || other.hfDetails == hfDetails)&&const DeepCollectionEquality().equals(other.ieeCerts, ieeCerts)&&const DeepCollectionEquality().equals(other.memCitizenships, memCitizenships)&&const DeepCollectionEquality().equals(other.orgArticles, orgArticles)&&const DeepCollectionEquality().equals(other.orgPerms, orgPerms)&&const DeepCollectionEquality().equals(other.regOrgs, regOrgs)&&const DeepCollectionEquality().equals(other.serviceFees, serviceFees)&&const DeepCollectionEquality().equals(other.taxClears, taxClears)&&const DeepCollectionEquality().equals(other.vatPans, vatPans)&&const DeepCollectionEquality().equals(other.hcode, hcode)&&const DeepCollectionEquality().equals(other.rtype, rtype));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,hfCode,type,healthFacilityType,authlevel,ftype,opstatus,internet,renDate,const DeepCollectionEquality().hash(sectioned),functional,const DeepCollectionEquality().hash(icuSectioned),const DeepCollectionEquality().hash(icuFunctional),const DeepCollectionEquality().hash(ventilatorSectioned),const DeepCollectionEquality().hash(ventilatorFunctional),province,district,municipality,ward,estdDate,validity,email,telephone,oxygen,ambulance,concentrator,cylinder,ehs,geriatrics,insurance,ocmc,pharmacy,plantCapacity,ssu,contactPerson,contactPersonMobile,ambulanceCategory,ambulanceContact,const DeepCollectionEquality().hash(hduFunctional),const DeepCollectionEquality().hash(hduSectioned),const DeepCollectionEquality().hash(nicuFunctional),const DeepCollectionEquality().hash(nicuSectioned),const DeepCollectionEquality().hash(orgSource),const DeepCollectionEquality().hash(buildingCost),const DeepCollectionEquality().hash(deviceCost),const DeepCollectionEquality().hash(estIncome),const DeepCollectionEquality().hash(loanOrg),const DeepCollectionEquality().hash(otherSource),const DeepCollectionEquality().hash(propertySource),const DeepCollectionEquality().hash(workforceCost),approvedate,approveby,serviceType,ownership,ownerships,level,healthFacilityLevel,oldlevel,buildingMaps,hfDetails,const DeepCollectionEquality().hash(ieeCerts),const DeepCollectionEquality().hash(memCitizenships),const DeepCollectionEquality().hash(orgArticles),const DeepCollectionEquality().hash(orgPerms),const DeepCollectionEquality().hash(regOrgs),const DeepCollectionEquality().hash(serviceFees),const DeepCollectionEquality().hash(taxClears),const DeepCollectionEquality().hash(vatPans),const DeepCollectionEquality().hash(hcode),const DeepCollectionEquality().hash(rtype)]);

@override
String toString() {
  return 'Properties(hfCode: $hfCode, type: $type, healthFacilityType: $healthFacilityType, authlevel: $authlevel, ftype: $ftype, opstatus: $opstatus, internet: $internet, renDate: $renDate, sectioned: $sectioned, functional: $functional, icuSectioned: $icuSectioned, icuFunctional: $icuFunctional, ventilatorSectioned: $ventilatorSectioned, ventilatorFunctional: $ventilatorFunctional, province: $province, district: $district, municipality: $municipality, ward: $ward, estdDate: $estdDate, validity: $validity, email: $email, telephone: $telephone, oxygen: $oxygen, ambulance: $ambulance, concentrator: $concentrator, cylinder: $cylinder, ehs: $ehs, geriatrics: $geriatrics, insurance: $insurance, ocmc: $ocmc, pharmacy: $pharmacy, plantCapacity: $plantCapacity, ssu: $ssu, contactPerson: $contactPerson, contactPersonMobile: $contactPersonMobile, ambulanceCategory: $ambulanceCategory, ambulanceContact: $ambulanceContact, hduFunctional: $hduFunctional, hduSectioned: $hduSectioned, nicuFunctional: $nicuFunctional, nicuSectioned: $nicuSectioned, orgSource: $orgSource, buildingCost: $buildingCost, deviceCost: $deviceCost, estIncome: $estIncome, loanOrg: $loanOrg, otherSource: $otherSource, propertySource: $propertySource, workforceCost: $workforceCost, approvedate: $approvedate, approveby: $approveby, serviceType: $serviceType, ownership: $ownership, ownerships: $ownerships, level: $level, healthFacilityLevel: $healthFacilityLevel, oldlevel: $oldlevel, buildingMaps: $buildingMaps, hfDetails: $hfDetails, ieeCerts: $ieeCerts, memCitizenships: $memCitizenships, orgArticles: $orgArticles, orgPerms: $orgPerms, regOrgs: $regOrgs, serviceFees: $serviceFees, taxClears: $taxClears, vatPans: $vatPans, hcode: $hcode, rtype: $rtype)';
}


}

/// @nodoc
abstract mixin class _$PropertiesCopyWith<$Res> implements $PropertiesCopyWith<$Res> {
  factory _$PropertiesCopyWith(_Properties value, $Res Function(_Properties) _then) = __$PropertiesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "hfCode") int? hfCode,@JsonKey(name: "type") int? type,@JsonKey(name: "Health_facility_Type") HealthFacilityType? healthFacilityType,@JsonKey(name: "authlevel") String? authlevel,@JsonKey(name: "ftype") int? ftype,@JsonKey(name: "opstatus") String? opstatus,@JsonKey(name: "internet") String? internet,@JsonKey(name: "ren_date") String? renDate,@JsonKey(name: "sectioned") dynamic sectioned,@JsonKey(name: "functional") int? functional,@JsonKey(name: "icu_sectioned") dynamic icuSectioned,@JsonKey(name: "icu_functional") dynamic icuFunctional,@JsonKey(name: "ventilator_sectioned") dynamic ventilatorSectioned,@JsonKey(name: "ventilator_functional") dynamic ventilatorFunctional,@JsonKey(name: "province") Province? province,@JsonKey(name: "district") District? district,@JsonKey(name: "municipality") Municipality? municipality,@JsonKey(name: "ward") int? ward,@JsonKey(name: "estd_date") String? estdDate,@JsonKey(name: "validity") String? validity,@JsonKey(name: "email") String? email,@JsonKey(name: "telephone") String? telephone,@JsonKey(name: "oxygen") String? oxygen,@JsonKey(name: "ambulance") String? ambulance,@JsonKey(name: "concentrator") String? concentrator,@JsonKey(name: "cylinder") String? cylinder,@JsonKey(name: "ehs") String? ehs,@JsonKey(name: "geriatrics") String? geriatrics,@JsonKey(name: "insurance") String? insurance,@JsonKey(name: "ocmc") String? ocmc,@JsonKey(name: "pharmacy") String? pharmacy,@JsonKey(name: "plant_capacity") String? plantCapacity,@JsonKey(name: "ssu") String? ssu,@JsonKey(name: "contact_person") String? contactPerson,@JsonKey(name: "contact_person_mobile") String? contactPersonMobile,@JsonKey(name: "ambulance_category") String? ambulanceCategory,@JsonKey(name: "ambulance_contact") String? ambulanceContact,@JsonKey(name: "hdu_functional") dynamic hduFunctional,@JsonKey(name: "hdu_sectioned") dynamic hduSectioned,@JsonKey(name: "nicu_functional") dynamic nicuFunctional,@JsonKey(name: "nicu_sectioned") dynamic nicuSectioned,@JsonKey(name: "org_source") dynamic orgSource,@JsonKey(name: "building_cost") dynamic buildingCost,@JsonKey(name: "device_cost") dynamic deviceCost,@JsonKey(name: "est_income") dynamic estIncome,@JsonKey(name: "loan_org") dynamic loanOrg,@JsonKey(name: "other_source") dynamic otherSource,@JsonKey(name: "property_source") dynamic propertySource,@JsonKey(name: "workforce_cost") dynamic workforceCost,@JsonKey(name: "approvedate") DateTime? approvedate,@JsonKey(name: "approveby") String? approveby,@JsonKey(name: "service_type") ServiceType? serviceType,@JsonKey(name: "ownership") int? ownership,@JsonKey(name: "ownerships") Ownerships? ownerships,@JsonKey(name: "level") int? level,@JsonKey(name: "health_facility_level") HealthFacilityLevel? healthFacilityLevel,@JsonKey(name: "oldlevel") int? oldlevel,@JsonKey(name: "building_maps") String? buildingMaps,@JsonKey(name: "hf_details") String? hfDetails,@JsonKey(name: "iee_certs") dynamic ieeCerts,@JsonKey(name: "mem_citizenships") dynamic memCitizenships,@JsonKey(name: "org_articles") dynamic orgArticles,@JsonKey(name: "org_perms") dynamic orgPerms,@JsonKey(name: "reg_orgs") dynamic regOrgs,@JsonKey(name: "service_fees") dynamic serviceFees,@JsonKey(name: "tax_clears") dynamic taxClears,@JsonKey(name: "vat_pans") dynamic vatPans,@JsonKey(name: "hcode") dynamic hcode,@JsonKey(name: "rtype") dynamic rtype
});


@override $HealthFacilityTypeCopyWith<$Res>? get healthFacilityType;@override $ProvinceCopyWith<$Res>? get province;@override $DistrictCopyWith<$Res>? get district;@override $MunicipalityCopyWith<$Res>? get municipality;@override $ServiceTypeCopyWith<$Res>? get serviceType;@override $OwnershipsCopyWith<$Res>? get ownerships;@override $HealthFacilityLevelCopyWith<$Res>? get healthFacilityLevel;

}
/// @nodoc
class __$PropertiesCopyWithImpl<$Res>
    implements _$PropertiesCopyWith<$Res> {
  __$PropertiesCopyWithImpl(this._self, this._then);

  final _Properties _self;
  final $Res Function(_Properties) _then;

/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hfCode = freezed,Object? type = freezed,Object? healthFacilityType = freezed,Object? authlevel = freezed,Object? ftype = freezed,Object? opstatus = freezed,Object? internet = freezed,Object? renDate = freezed,Object? sectioned = freezed,Object? functional = freezed,Object? icuSectioned = freezed,Object? icuFunctional = freezed,Object? ventilatorSectioned = freezed,Object? ventilatorFunctional = freezed,Object? province = freezed,Object? district = freezed,Object? municipality = freezed,Object? ward = freezed,Object? estdDate = freezed,Object? validity = freezed,Object? email = freezed,Object? telephone = freezed,Object? oxygen = freezed,Object? ambulance = freezed,Object? concentrator = freezed,Object? cylinder = freezed,Object? ehs = freezed,Object? geriatrics = freezed,Object? insurance = freezed,Object? ocmc = freezed,Object? pharmacy = freezed,Object? plantCapacity = freezed,Object? ssu = freezed,Object? contactPerson = freezed,Object? contactPersonMobile = freezed,Object? ambulanceCategory = freezed,Object? ambulanceContact = freezed,Object? hduFunctional = freezed,Object? hduSectioned = freezed,Object? nicuFunctional = freezed,Object? nicuSectioned = freezed,Object? orgSource = freezed,Object? buildingCost = freezed,Object? deviceCost = freezed,Object? estIncome = freezed,Object? loanOrg = freezed,Object? otherSource = freezed,Object? propertySource = freezed,Object? workforceCost = freezed,Object? approvedate = freezed,Object? approveby = freezed,Object? serviceType = freezed,Object? ownership = freezed,Object? ownerships = freezed,Object? level = freezed,Object? healthFacilityLevel = freezed,Object? oldlevel = freezed,Object? buildingMaps = freezed,Object? hfDetails = freezed,Object? ieeCerts = freezed,Object? memCitizenships = freezed,Object? orgArticles = freezed,Object? orgPerms = freezed,Object? regOrgs = freezed,Object? serviceFees = freezed,Object? taxClears = freezed,Object? vatPans = freezed,Object? hcode = freezed,Object? rtype = freezed,}) {
  return _then(_Properties(
hfCode: freezed == hfCode ? _self.hfCode : hfCode // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int?,healthFacilityType: freezed == healthFacilityType ? _self.healthFacilityType : healthFacilityType // ignore: cast_nullable_to_non_nullable
as HealthFacilityType?,authlevel: freezed == authlevel ? _self.authlevel : authlevel // ignore: cast_nullable_to_non_nullable
as String?,ftype: freezed == ftype ? _self.ftype : ftype // ignore: cast_nullable_to_non_nullable
as int?,opstatus: freezed == opstatus ? _self.opstatus : opstatus // ignore: cast_nullable_to_non_nullable
as String?,internet: freezed == internet ? _self.internet : internet // ignore: cast_nullable_to_non_nullable
as String?,renDate: freezed == renDate ? _self.renDate : renDate // ignore: cast_nullable_to_non_nullable
as String?,sectioned: freezed == sectioned ? _self.sectioned : sectioned // ignore: cast_nullable_to_non_nullable
as dynamic,functional: freezed == functional ? _self.functional : functional // ignore: cast_nullable_to_non_nullable
as int?,icuSectioned: freezed == icuSectioned ? _self.icuSectioned : icuSectioned // ignore: cast_nullable_to_non_nullable
as dynamic,icuFunctional: freezed == icuFunctional ? _self.icuFunctional : icuFunctional // ignore: cast_nullable_to_non_nullable
as dynamic,ventilatorSectioned: freezed == ventilatorSectioned ? _self.ventilatorSectioned : ventilatorSectioned // ignore: cast_nullable_to_non_nullable
as dynamic,ventilatorFunctional: freezed == ventilatorFunctional ? _self.ventilatorFunctional : ventilatorFunctional // ignore: cast_nullable_to_non_nullable
as dynamic,province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as Province?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as District?,municipality: freezed == municipality ? _self.municipality : municipality // ignore: cast_nullable_to_non_nullable
as Municipality?,ward: freezed == ward ? _self.ward : ward // ignore: cast_nullable_to_non_nullable
as int?,estdDate: freezed == estdDate ? _self.estdDate : estdDate // ignore: cast_nullable_to_non_nullable
as String?,validity: freezed == validity ? _self.validity : validity // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,telephone: freezed == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String?,oxygen: freezed == oxygen ? _self.oxygen : oxygen // ignore: cast_nullable_to_non_nullable
as String?,ambulance: freezed == ambulance ? _self.ambulance : ambulance // ignore: cast_nullable_to_non_nullable
as String?,concentrator: freezed == concentrator ? _self.concentrator : concentrator // ignore: cast_nullable_to_non_nullable
as String?,cylinder: freezed == cylinder ? _self.cylinder : cylinder // ignore: cast_nullable_to_non_nullable
as String?,ehs: freezed == ehs ? _self.ehs : ehs // ignore: cast_nullable_to_non_nullable
as String?,geriatrics: freezed == geriatrics ? _self.geriatrics : geriatrics // ignore: cast_nullable_to_non_nullable
as String?,insurance: freezed == insurance ? _self.insurance : insurance // ignore: cast_nullable_to_non_nullable
as String?,ocmc: freezed == ocmc ? _self.ocmc : ocmc // ignore: cast_nullable_to_non_nullable
as String?,pharmacy: freezed == pharmacy ? _self.pharmacy : pharmacy // ignore: cast_nullable_to_non_nullable
as String?,plantCapacity: freezed == plantCapacity ? _self.plantCapacity : plantCapacity // ignore: cast_nullable_to_non_nullable
as String?,ssu: freezed == ssu ? _self.ssu : ssu // ignore: cast_nullable_to_non_nullable
as String?,contactPerson: freezed == contactPerson ? _self.contactPerson : contactPerson // ignore: cast_nullable_to_non_nullable
as String?,contactPersonMobile: freezed == contactPersonMobile ? _self.contactPersonMobile : contactPersonMobile // ignore: cast_nullable_to_non_nullable
as String?,ambulanceCategory: freezed == ambulanceCategory ? _self.ambulanceCategory : ambulanceCategory // ignore: cast_nullable_to_non_nullable
as String?,ambulanceContact: freezed == ambulanceContact ? _self.ambulanceContact : ambulanceContact // ignore: cast_nullable_to_non_nullable
as String?,hduFunctional: freezed == hduFunctional ? _self.hduFunctional : hduFunctional // ignore: cast_nullable_to_non_nullable
as dynamic,hduSectioned: freezed == hduSectioned ? _self.hduSectioned : hduSectioned // ignore: cast_nullable_to_non_nullable
as dynamic,nicuFunctional: freezed == nicuFunctional ? _self.nicuFunctional : nicuFunctional // ignore: cast_nullable_to_non_nullable
as dynamic,nicuSectioned: freezed == nicuSectioned ? _self.nicuSectioned : nicuSectioned // ignore: cast_nullable_to_non_nullable
as dynamic,orgSource: freezed == orgSource ? _self.orgSource : orgSource // ignore: cast_nullable_to_non_nullable
as dynamic,buildingCost: freezed == buildingCost ? _self.buildingCost : buildingCost // ignore: cast_nullable_to_non_nullable
as dynamic,deviceCost: freezed == deviceCost ? _self.deviceCost : deviceCost // ignore: cast_nullable_to_non_nullable
as dynamic,estIncome: freezed == estIncome ? _self.estIncome : estIncome // ignore: cast_nullable_to_non_nullable
as dynamic,loanOrg: freezed == loanOrg ? _self.loanOrg : loanOrg // ignore: cast_nullable_to_non_nullable
as dynamic,otherSource: freezed == otherSource ? _self.otherSource : otherSource // ignore: cast_nullable_to_non_nullable
as dynamic,propertySource: freezed == propertySource ? _self.propertySource : propertySource // ignore: cast_nullable_to_non_nullable
as dynamic,workforceCost: freezed == workforceCost ? _self.workforceCost : workforceCost // ignore: cast_nullable_to_non_nullable
as dynamic,approvedate: freezed == approvedate ? _self.approvedate : approvedate // ignore: cast_nullable_to_non_nullable
as DateTime?,approveby: freezed == approveby ? _self.approveby : approveby // ignore: cast_nullable_to_non_nullable
as String?,serviceType: freezed == serviceType ? _self.serviceType : serviceType // ignore: cast_nullable_to_non_nullable
as ServiceType?,ownership: freezed == ownership ? _self.ownership : ownership // ignore: cast_nullable_to_non_nullable
as int?,ownerships: freezed == ownerships ? _self.ownerships : ownerships // ignore: cast_nullable_to_non_nullable
as Ownerships?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,healthFacilityLevel: freezed == healthFacilityLevel ? _self.healthFacilityLevel : healthFacilityLevel // ignore: cast_nullable_to_non_nullable
as HealthFacilityLevel?,oldlevel: freezed == oldlevel ? _self.oldlevel : oldlevel // ignore: cast_nullable_to_non_nullable
as int?,buildingMaps: freezed == buildingMaps ? _self.buildingMaps : buildingMaps // ignore: cast_nullable_to_non_nullable
as String?,hfDetails: freezed == hfDetails ? _self.hfDetails : hfDetails // ignore: cast_nullable_to_non_nullable
as String?,ieeCerts: freezed == ieeCerts ? _self.ieeCerts : ieeCerts // ignore: cast_nullable_to_non_nullable
as dynamic,memCitizenships: freezed == memCitizenships ? _self.memCitizenships : memCitizenships // ignore: cast_nullable_to_non_nullable
as dynamic,orgArticles: freezed == orgArticles ? _self.orgArticles : orgArticles // ignore: cast_nullable_to_non_nullable
as dynamic,orgPerms: freezed == orgPerms ? _self.orgPerms : orgPerms // ignore: cast_nullable_to_non_nullable
as dynamic,regOrgs: freezed == regOrgs ? _self.regOrgs : regOrgs // ignore: cast_nullable_to_non_nullable
as dynamic,serviceFees: freezed == serviceFees ? _self.serviceFees : serviceFees // ignore: cast_nullable_to_non_nullable
as dynamic,taxClears: freezed == taxClears ? _self.taxClears : taxClears // ignore: cast_nullable_to_non_nullable
as dynamic,vatPans: freezed == vatPans ? _self.vatPans : vatPans // ignore: cast_nullable_to_non_nullable
as dynamic,hcode: freezed == hcode ? _self.hcode : hcode // ignore: cast_nullable_to_non_nullable
as dynamic,rtype: freezed == rtype ? _self.rtype : rtype // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthFacilityTypeCopyWith<$Res>? get healthFacilityType {
    if (_self.healthFacilityType == null) {
    return null;
  }

  return $HealthFacilityTypeCopyWith<$Res>(_self.healthFacilityType!, (value) {
    return _then(_self.copyWith(healthFacilityType: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvinceCopyWith<$Res>? get province {
    if (_self.province == null) {
    return null;
  }

  return $ProvinceCopyWith<$Res>(_self.province!, (value) {
    return _then(_self.copyWith(province: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistrictCopyWith<$Res>? get district {
    if (_self.district == null) {
    return null;
  }

  return $DistrictCopyWith<$Res>(_self.district!, (value) {
    return _then(_self.copyWith(district: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MunicipalityCopyWith<$Res>? get municipality {
    if (_self.municipality == null) {
    return null;
  }

  return $MunicipalityCopyWith<$Res>(_self.municipality!, (value) {
    return _then(_self.copyWith(municipality: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceTypeCopyWith<$Res>? get serviceType {
    if (_self.serviceType == null) {
    return null;
  }

  return $ServiceTypeCopyWith<$Res>(_self.serviceType!, (value) {
    return _then(_self.copyWith(serviceType: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnershipsCopyWith<$Res>? get ownerships {
    if (_self.ownerships == null) {
    return null;
  }

  return $OwnershipsCopyWith<$Res>(_self.ownerships!, (value) {
    return _then(_self.copyWith(ownerships: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthFacilityLevelCopyWith<$Res>? get healthFacilityLevel {
    if (_self.healthFacilityLevel == null) {
    return null;
  }

  return $HealthFacilityLevelCopyWith<$Res>(_self.healthFacilityLevel!, (value) {
    return _then(_self.copyWith(healthFacilityLevel: value));
  });
}
}


/// @nodoc
mixin _$District {

@JsonKey(name: "district_id") String? get districtId;@JsonKey(name: "district_name") String? get districtName;
/// Create a copy of District
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DistrictCopyWith<District> get copyWith => _$DistrictCopyWithImpl<District>(this as District, _$identity);

  /// Serializes this District to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is District&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.districtName, districtName) || other.districtName == districtName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,districtId,districtName);

@override
String toString() {
  return 'District(districtId: $districtId, districtName: $districtName)';
}


}

/// @nodoc
abstract mixin class $DistrictCopyWith<$Res>  {
  factory $DistrictCopyWith(District value, $Res Function(District) _then) = _$DistrictCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "district_id") String? districtId,@JsonKey(name: "district_name") String? districtName
});




}
/// @nodoc
class _$DistrictCopyWithImpl<$Res>
    implements $DistrictCopyWith<$Res> {
  _$DistrictCopyWithImpl(this._self, this._then);

  final District _self;
  final $Res Function(District) _then;

/// Create a copy of District
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? districtId = freezed,Object? districtName = freezed,}) {
  return _then(_self.copyWith(
districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String?,districtName: freezed == districtName ? _self.districtName : districtName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [District].
extension DistrictPatterns on District {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _District value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _District() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _District value)  $default,){
final _that = this;
switch (_that) {
case _District():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _District value)?  $default,){
final _that = this;
switch (_that) {
case _District() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "district_id")  String? districtId, @JsonKey(name: "district_name")  String? districtName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _District() when $default != null:
return $default(_that.districtId,_that.districtName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "district_id")  String? districtId, @JsonKey(name: "district_name")  String? districtName)  $default,) {final _that = this;
switch (_that) {
case _District():
return $default(_that.districtId,_that.districtName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "district_id")  String? districtId, @JsonKey(name: "district_name")  String? districtName)?  $default,) {final _that = this;
switch (_that) {
case _District() when $default != null:
return $default(_that.districtId,_that.districtName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _District implements District {
  const _District({@JsonKey(name: "district_id") this.districtId, @JsonKey(name: "district_name") this.districtName});
  factory _District.fromJson(Map<String, dynamic> json) => _$DistrictFromJson(json);

@override@JsonKey(name: "district_id") final  String? districtId;
@override@JsonKey(name: "district_name") final  String? districtName;

/// Create a copy of District
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DistrictCopyWith<_District> get copyWith => __$DistrictCopyWithImpl<_District>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DistrictToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _District&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.districtName, districtName) || other.districtName == districtName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,districtId,districtName);

@override
String toString() {
  return 'District(districtId: $districtId, districtName: $districtName)';
}


}

/// @nodoc
abstract mixin class _$DistrictCopyWith<$Res> implements $DistrictCopyWith<$Res> {
  factory _$DistrictCopyWith(_District value, $Res Function(_District) _then) = __$DistrictCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "district_id") String? districtId,@JsonKey(name: "district_name") String? districtName
});




}
/// @nodoc
class __$DistrictCopyWithImpl<$Res>
    implements _$DistrictCopyWith<$Res> {
  __$DistrictCopyWithImpl(this._self, this._then);

  final _District _self;
  final $Res Function(_District) _then;

/// Create a copy of District
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? districtId = freezed,Object? districtName = freezed,}) {
  return _then(_District(
districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String?,districtName: freezed == districtName ? _self.districtName : districtName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$HealthFacilityLevel {

@JsonKey(name: "facility_level_id") String? get facilityLevelId;@JsonKey(name: "facility_level_code") String? get facilityLevelCode;@JsonKey(name: "facility_level_name") String? get facilityLevelName;@JsonKey(name: "facility_level_status") String? get facilityLevelStatus;@JsonKey(name: "facility_level_parent") String? get facilityLevelParent;@JsonKey(name: "facility_level_types") String? get facilityLevelTypes;
/// Create a copy of HealthFacilityLevel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthFacilityLevelCopyWith<HealthFacilityLevel> get copyWith => _$HealthFacilityLevelCopyWithImpl<HealthFacilityLevel>(this as HealthFacilityLevel, _$identity);

  /// Serializes this HealthFacilityLevel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthFacilityLevel&&(identical(other.facilityLevelId, facilityLevelId) || other.facilityLevelId == facilityLevelId)&&(identical(other.facilityLevelCode, facilityLevelCode) || other.facilityLevelCode == facilityLevelCode)&&(identical(other.facilityLevelName, facilityLevelName) || other.facilityLevelName == facilityLevelName)&&(identical(other.facilityLevelStatus, facilityLevelStatus) || other.facilityLevelStatus == facilityLevelStatus)&&(identical(other.facilityLevelParent, facilityLevelParent) || other.facilityLevelParent == facilityLevelParent)&&(identical(other.facilityLevelTypes, facilityLevelTypes) || other.facilityLevelTypes == facilityLevelTypes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,facilityLevelId,facilityLevelCode,facilityLevelName,facilityLevelStatus,facilityLevelParent,facilityLevelTypes);

@override
String toString() {
  return 'HealthFacilityLevel(facilityLevelId: $facilityLevelId, facilityLevelCode: $facilityLevelCode, facilityLevelName: $facilityLevelName, facilityLevelStatus: $facilityLevelStatus, facilityLevelParent: $facilityLevelParent, facilityLevelTypes: $facilityLevelTypes)';
}


}

/// @nodoc
abstract mixin class $HealthFacilityLevelCopyWith<$Res>  {
  factory $HealthFacilityLevelCopyWith(HealthFacilityLevel value, $Res Function(HealthFacilityLevel) _then) = _$HealthFacilityLevelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "facility_level_id") String? facilityLevelId,@JsonKey(name: "facility_level_code") String? facilityLevelCode,@JsonKey(name: "facility_level_name") String? facilityLevelName,@JsonKey(name: "facility_level_status") String? facilityLevelStatus,@JsonKey(name: "facility_level_parent") String? facilityLevelParent,@JsonKey(name: "facility_level_types") String? facilityLevelTypes
});




}
/// @nodoc
class _$HealthFacilityLevelCopyWithImpl<$Res>
    implements $HealthFacilityLevelCopyWith<$Res> {
  _$HealthFacilityLevelCopyWithImpl(this._self, this._then);

  final HealthFacilityLevel _self;
  final $Res Function(HealthFacilityLevel) _then;

/// Create a copy of HealthFacilityLevel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? facilityLevelId = freezed,Object? facilityLevelCode = freezed,Object? facilityLevelName = freezed,Object? facilityLevelStatus = freezed,Object? facilityLevelParent = freezed,Object? facilityLevelTypes = freezed,}) {
  return _then(_self.copyWith(
facilityLevelId: freezed == facilityLevelId ? _self.facilityLevelId : facilityLevelId // ignore: cast_nullable_to_non_nullable
as String?,facilityLevelCode: freezed == facilityLevelCode ? _self.facilityLevelCode : facilityLevelCode // ignore: cast_nullable_to_non_nullable
as String?,facilityLevelName: freezed == facilityLevelName ? _self.facilityLevelName : facilityLevelName // ignore: cast_nullable_to_non_nullable
as String?,facilityLevelStatus: freezed == facilityLevelStatus ? _self.facilityLevelStatus : facilityLevelStatus // ignore: cast_nullable_to_non_nullable
as String?,facilityLevelParent: freezed == facilityLevelParent ? _self.facilityLevelParent : facilityLevelParent // ignore: cast_nullable_to_non_nullable
as String?,facilityLevelTypes: freezed == facilityLevelTypes ? _self.facilityLevelTypes : facilityLevelTypes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthFacilityLevel].
extension HealthFacilityLevelPatterns on HealthFacilityLevel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthFacilityLevel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthFacilityLevel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthFacilityLevel value)  $default,){
final _that = this;
switch (_that) {
case _HealthFacilityLevel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthFacilityLevel value)?  $default,){
final _that = this;
switch (_that) {
case _HealthFacilityLevel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "facility_level_id")  String? facilityLevelId, @JsonKey(name: "facility_level_code")  String? facilityLevelCode, @JsonKey(name: "facility_level_name")  String? facilityLevelName, @JsonKey(name: "facility_level_status")  String? facilityLevelStatus, @JsonKey(name: "facility_level_parent")  String? facilityLevelParent, @JsonKey(name: "facility_level_types")  String? facilityLevelTypes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthFacilityLevel() when $default != null:
return $default(_that.facilityLevelId,_that.facilityLevelCode,_that.facilityLevelName,_that.facilityLevelStatus,_that.facilityLevelParent,_that.facilityLevelTypes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "facility_level_id")  String? facilityLevelId, @JsonKey(name: "facility_level_code")  String? facilityLevelCode, @JsonKey(name: "facility_level_name")  String? facilityLevelName, @JsonKey(name: "facility_level_status")  String? facilityLevelStatus, @JsonKey(name: "facility_level_parent")  String? facilityLevelParent, @JsonKey(name: "facility_level_types")  String? facilityLevelTypes)  $default,) {final _that = this;
switch (_that) {
case _HealthFacilityLevel():
return $default(_that.facilityLevelId,_that.facilityLevelCode,_that.facilityLevelName,_that.facilityLevelStatus,_that.facilityLevelParent,_that.facilityLevelTypes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "facility_level_id")  String? facilityLevelId, @JsonKey(name: "facility_level_code")  String? facilityLevelCode, @JsonKey(name: "facility_level_name")  String? facilityLevelName, @JsonKey(name: "facility_level_status")  String? facilityLevelStatus, @JsonKey(name: "facility_level_parent")  String? facilityLevelParent, @JsonKey(name: "facility_level_types")  String? facilityLevelTypes)?  $default,) {final _that = this;
switch (_that) {
case _HealthFacilityLevel() when $default != null:
return $default(_that.facilityLevelId,_that.facilityLevelCode,_that.facilityLevelName,_that.facilityLevelStatus,_that.facilityLevelParent,_that.facilityLevelTypes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthFacilityLevel implements HealthFacilityLevel {
  const _HealthFacilityLevel({@JsonKey(name: "facility_level_id") this.facilityLevelId, @JsonKey(name: "facility_level_code") this.facilityLevelCode, @JsonKey(name: "facility_level_name") this.facilityLevelName, @JsonKey(name: "facility_level_status") this.facilityLevelStatus, @JsonKey(name: "facility_level_parent") this.facilityLevelParent, @JsonKey(name: "facility_level_types") this.facilityLevelTypes});
  factory _HealthFacilityLevel.fromJson(Map<String, dynamic> json) => _$HealthFacilityLevelFromJson(json);

@override@JsonKey(name: "facility_level_id") final  String? facilityLevelId;
@override@JsonKey(name: "facility_level_code") final  String? facilityLevelCode;
@override@JsonKey(name: "facility_level_name") final  String? facilityLevelName;
@override@JsonKey(name: "facility_level_status") final  String? facilityLevelStatus;
@override@JsonKey(name: "facility_level_parent") final  String? facilityLevelParent;
@override@JsonKey(name: "facility_level_types") final  String? facilityLevelTypes;

/// Create a copy of HealthFacilityLevel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthFacilityLevelCopyWith<_HealthFacilityLevel> get copyWith => __$HealthFacilityLevelCopyWithImpl<_HealthFacilityLevel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthFacilityLevelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthFacilityLevel&&(identical(other.facilityLevelId, facilityLevelId) || other.facilityLevelId == facilityLevelId)&&(identical(other.facilityLevelCode, facilityLevelCode) || other.facilityLevelCode == facilityLevelCode)&&(identical(other.facilityLevelName, facilityLevelName) || other.facilityLevelName == facilityLevelName)&&(identical(other.facilityLevelStatus, facilityLevelStatus) || other.facilityLevelStatus == facilityLevelStatus)&&(identical(other.facilityLevelParent, facilityLevelParent) || other.facilityLevelParent == facilityLevelParent)&&(identical(other.facilityLevelTypes, facilityLevelTypes) || other.facilityLevelTypes == facilityLevelTypes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,facilityLevelId,facilityLevelCode,facilityLevelName,facilityLevelStatus,facilityLevelParent,facilityLevelTypes);

@override
String toString() {
  return 'HealthFacilityLevel(facilityLevelId: $facilityLevelId, facilityLevelCode: $facilityLevelCode, facilityLevelName: $facilityLevelName, facilityLevelStatus: $facilityLevelStatus, facilityLevelParent: $facilityLevelParent, facilityLevelTypes: $facilityLevelTypes)';
}


}

/// @nodoc
abstract mixin class _$HealthFacilityLevelCopyWith<$Res> implements $HealthFacilityLevelCopyWith<$Res> {
  factory _$HealthFacilityLevelCopyWith(_HealthFacilityLevel value, $Res Function(_HealthFacilityLevel) _then) = __$HealthFacilityLevelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "facility_level_id") String? facilityLevelId,@JsonKey(name: "facility_level_code") String? facilityLevelCode,@JsonKey(name: "facility_level_name") String? facilityLevelName,@JsonKey(name: "facility_level_status") String? facilityLevelStatus,@JsonKey(name: "facility_level_parent") String? facilityLevelParent,@JsonKey(name: "facility_level_types") String? facilityLevelTypes
});




}
/// @nodoc
class __$HealthFacilityLevelCopyWithImpl<$Res>
    implements _$HealthFacilityLevelCopyWith<$Res> {
  __$HealthFacilityLevelCopyWithImpl(this._self, this._then);

  final _HealthFacilityLevel _self;
  final $Res Function(_HealthFacilityLevel) _then;

/// Create a copy of HealthFacilityLevel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? facilityLevelId = freezed,Object? facilityLevelCode = freezed,Object? facilityLevelName = freezed,Object? facilityLevelStatus = freezed,Object? facilityLevelParent = freezed,Object? facilityLevelTypes = freezed,}) {
  return _then(_HealthFacilityLevel(
facilityLevelId: freezed == facilityLevelId ? _self.facilityLevelId : facilityLevelId // ignore: cast_nullable_to_non_nullable
as String?,facilityLevelCode: freezed == facilityLevelCode ? _self.facilityLevelCode : facilityLevelCode // ignore: cast_nullable_to_non_nullable
as String?,facilityLevelName: freezed == facilityLevelName ? _self.facilityLevelName : facilityLevelName // ignore: cast_nullable_to_non_nullable
as String?,facilityLevelStatus: freezed == facilityLevelStatus ? _self.facilityLevelStatus : facilityLevelStatus // ignore: cast_nullable_to_non_nullable
as String?,facilityLevelParent: freezed == facilityLevelParent ? _self.facilityLevelParent : facilityLevelParent // ignore: cast_nullable_to_non_nullable
as String?,facilityLevelTypes: freezed == facilityLevelTypes ? _self.facilityLevelTypes : facilityLevelTypes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$HealthFacilityType {

@JsonKey(name: "hftype_id") String? get hftypeId;@JsonKey(name: "hftype_code") String? get hftypeCode;@JsonKey(name: "hftype_name") String? get hftypeName;
/// Create a copy of HealthFacilityType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthFacilityTypeCopyWith<HealthFacilityType> get copyWith => _$HealthFacilityTypeCopyWithImpl<HealthFacilityType>(this as HealthFacilityType, _$identity);

  /// Serializes this HealthFacilityType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthFacilityType&&(identical(other.hftypeId, hftypeId) || other.hftypeId == hftypeId)&&(identical(other.hftypeCode, hftypeCode) || other.hftypeCode == hftypeCode)&&(identical(other.hftypeName, hftypeName) || other.hftypeName == hftypeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hftypeId,hftypeCode,hftypeName);

@override
String toString() {
  return 'HealthFacilityType(hftypeId: $hftypeId, hftypeCode: $hftypeCode, hftypeName: $hftypeName)';
}


}

/// @nodoc
abstract mixin class $HealthFacilityTypeCopyWith<$Res>  {
  factory $HealthFacilityTypeCopyWith(HealthFacilityType value, $Res Function(HealthFacilityType) _then) = _$HealthFacilityTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "hftype_id") String? hftypeId,@JsonKey(name: "hftype_code") String? hftypeCode,@JsonKey(name: "hftype_name") String? hftypeName
});




}
/// @nodoc
class _$HealthFacilityTypeCopyWithImpl<$Res>
    implements $HealthFacilityTypeCopyWith<$Res> {
  _$HealthFacilityTypeCopyWithImpl(this._self, this._then);

  final HealthFacilityType _self;
  final $Res Function(HealthFacilityType) _then;

/// Create a copy of HealthFacilityType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hftypeId = freezed,Object? hftypeCode = freezed,Object? hftypeName = freezed,}) {
  return _then(_self.copyWith(
hftypeId: freezed == hftypeId ? _self.hftypeId : hftypeId // ignore: cast_nullable_to_non_nullable
as String?,hftypeCode: freezed == hftypeCode ? _self.hftypeCode : hftypeCode // ignore: cast_nullable_to_non_nullable
as String?,hftypeName: freezed == hftypeName ? _self.hftypeName : hftypeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthFacilityType].
extension HealthFacilityTypePatterns on HealthFacilityType {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthFacilityType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthFacilityType() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthFacilityType value)  $default,){
final _that = this;
switch (_that) {
case _HealthFacilityType():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthFacilityType value)?  $default,){
final _that = this;
switch (_that) {
case _HealthFacilityType() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "hftype_id")  String? hftypeId, @JsonKey(name: "hftype_code")  String? hftypeCode, @JsonKey(name: "hftype_name")  String? hftypeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthFacilityType() when $default != null:
return $default(_that.hftypeId,_that.hftypeCode,_that.hftypeName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "hftype_id")  String? hftypeId, @JsonKey(name: "hftype_code")  String? hftypeCode, @JsonKey(name: "hftype_name")  String? hftypeName)  $default,) {final _that = this;
switch (_that) {
case _HealthFacilityType():
return $default(_that.hftypeId,_that.hftypeCode,_that.hftypeName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "hftype_id")  String? hftypeId, @JsonKey(name: "hftype_code")  String? hftypeCode, @JsonKey(name: "hftype_name")  String? hftypeName)?  $default,) {final _that = this;
switch (_that) {
case _HealthFacilityType() when $default != null:
return $default(_that.hftypeId,_that.hftypeCode,_that.hftypeName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthFacilityType implements HealthFacilityType {
  const _HealthFacilityType({@JsonKey(name: "hftype_id") this.hftypeId, @JsonKey(name: "hftype_code") this.hftypeCode, @JsonKey(name: "hftype_name") this.hftypeName});
  factory _HealthFacilityType.fromJson(Map<String, dynamic> json) => _$HealthFacilityTypeFromJson(json);

@override@JsonKey(name: "hftype_id") final  String? hftypeId;
@override@JsonKey(name: "hftype_code") final  String? hftypeCode;
@override@JsonKey(name: "hftype_name") final  String? hftypeName;

/// Create a copy of HealthFacilityType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthFacilityTypeCopyWith<_HealthFacilityType> get copyWith => __$HealthFacilityTypeCopyWithImpl<_HealthFacilityType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthFacilityTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthFacilityType&&(identical(other.hftypeId, hftypeId) || other.hftypeId == hftypeId)&&(identical(other.hftypeCode, hftypeCode) || other.hftypeCode == hftypeCode)&&(identical(other.hftypeName, hftypeName) || other.hftypeName == hftypeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hftypeId,hftypeCode,hftypeName);

@override
String toString() {
  return 'HealthFacilityType(hftypeId: $hftypeId, hftypeCode: $hftypeCode, hftypeName: $hftypeName)';
}


}

/// @nodoc
abstract mixin class _$HealthFacilityTypeCopyWith<$Res> implements $HealthFacilityTypeCopyWith<$Res> {
  factory _$HealthFacilityTypeCopyWith(_HealthFacilityType value, $Res Function(_HealthFacilityType) _then) = __$HealthFacilityTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "hftype_id") String? hftypeId,@JsonKey(name: "hftype_code") String? hftypeCode,@JsonKey(name: "hftype_name") String? hftypeName
});




}
/// @nodoc
class __$HealthFacilityTypeCopyWithImpl<$Res>
    implements _$HealthFacilityTypeCopyWith<$Res> {
  __$HealthFacilityTypeCopyWithImpl(this._self, this._then);

  final _HealthFacilityType _self;
  final $Res Function(_HealthFacilityType) _then;

/// Create a copy of HealthFacilityType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hftypeId = freezed,Object? hftypeCode = freezed,Object? hftypeName = freezed,}) {
  return _then(_HealthFacilityType(
hftypeId: freezed == hftypeId ? _self.hftypeId : hftypeId // ignore: cast_nullable_to_non_nullable
as String?,hftypeCode: freezed == hftypeCode ? _self.hftypeCode : hftypeCode // ignore: cast_nullable_to_non_nullable
as String?,hftypeName: freezed == hftypeName ? _self.hftypeName : hftypeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Municipality {

@JsonKey(name: "municipality_id") String? get municipalityId;@JsonKey(name: "municipality_name") String? get municipalityName;
/// Create a copy of Municipality
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MunicipalityCopyWith<Municipality> get copyWith => _$MunicipalityCopyWithImpl<Municipality>(this as Municipality, _$identity);

  /// Serializes this Municipality to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Municipality&&(identical(other.municipalityId, municipalityId) || other.municipalityId == municipalityId)&&(identical(other.municipalityName, municipalityName) || other.municipalityName == municipalityName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,municipalityId,municipalityName);

@override
String toString() {
  return 'Municipality(municipalityId: $municipalityId, municipalityName: $municipalityName)';
}


}

/// @nodoc
abstract mixin class $MunicipalityCopyWith<$Res>  {
  factory $MunicipalityCopyWith(Municipality value, $Res Function(Municipality) _then) = _$MunicipalityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "municipality_id") String? municipalityId,@JsonKey(name: "municipality_name") String? municipalityName
});




}
/// @nodoc
class _$MunicipalityCopyWithImpl<$Res>
    implements $MunicipalityCopyWith<$Res> {
  _$MunicipalityCopyWithImpl(this._self, this._then);

  final Municipality _self;
  final $Res Function(Municipality) _then;

/// Create a copy of Municipality
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? municipalityId = freezed,Object? municipalityName = freezed,}) {
  return _then(_self.copyWith(
municipalityId: freezed == municipalityId ? _self.municipalityId : municipalityId // ignore: cast_nullable_to_non_nullable
as String?,municipalityName: freezed == municipalityName ? _self.municipalityName : municipalityName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Municipality].
extension MunicipalityPatterns on Municipality {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Municipality value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Municipality() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Municipality value)  $default,){
final _that = this;
switch (_that) {
case _Municipality():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Municipality value)?  $default,){
final _that = this;
switch (_that) {
case _Municipality() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "municipality_id")  String? municipalityId, @JsonKey(name: "municipality_name")  String? municipalityName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Municipality() when $default != null:
return $default(_that.municipalityId,_that.municipalityName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "municipality_id")  String? municipalityId, @JsonKey(name: "municipality_name")  String? municipalityName)  $default,) {final _that = this;
switch (_that) {
case _Municipality():
return $default(_that.municipalityId,_that.municipalityName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "municipality_id")  String? municipalityId, @JsonKey(name: "municipality_name")  String? municipalityName)?  $default,) {final _that = this;
switch (_that) {
case _Municipality() when $default != null:
return $default(_that.municipalityId,_that.municipalityName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Municipality implements Municipality {
  const _Municipality({@JsonKey(name: "municipality_id") this.municipalityId, @JsonKey(name: "municipality_name") this.municipalityName});
  factory _Municipality.fromJson(Map<String, dynamic> json) => _$MunicipalityFromJson(json);

@override@JsonKey(name: "municipality_id") final  String? municipalityId;
@override@JsonKey(name: "municipality_name") final  String? municipalityName;

/// Create a copy of Municipality
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MunicipalityCopyWith<_Municipality> get copyWith => __$MunicipalityCopyWithImpl<_Municipality>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MunicipalityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Municipality&&(identical(other.municipalityId, municipalityId) || other.municipalityId == municipalityId)&&(identical(other.municipalityName, municipalityName) || other.municipalityName == municipalityName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,municipalityId,municipalityName);

@override
String toString() {
  return 'Municipality(municipalityId: $municipalityId, municipalityName: $municipalityName)';
}


}

/// @nodoc
abstract mixin class _$MunicipalityCopyWith<$Res> implements $MunicipalityCopyWith<$Res> {
  factory _$MunicipalityCopyWith(_Municipality value, $Res Function(_Municipality) _then) = __$MunicipalityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "municipality_id") String? municipalityId,@JsonKey(name: "municipality_name") String? municipalityName
});




}
/// @nodoc
class __$MunicipalityCopyWithImpl<$Res>
    implements _$MunicipalityCopyWith<$Res> {
  __$MunicipalityCopyWithImpl(this._self, this._then);

  final _Municipality _self;
  final $Res Function(_Municipality) _then;

/// Create a copy of Municipality
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? municipalityId = freezed,Object? municipalityName = freezed,}) {
  return _then(_Municipality(
municipalityId: freezed == municipalityId ? _self.municipalityId : municipalityId // ignore: cast_nullable_to_non_nullable
as String?,municipalityName: freezed == municipalityName ? _self.municipalityName : municipalityName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Ownerships {

@JsonKey(name: "ownership_id") String? get ownershipId;@JsonKey(name: "ownership_name") String? get ownershipName;@JsonKey(name: "ownership_code") String? get ownershipCode;@JsonKey(name: "ownership_status") String? get ownershipStatus;
/// Create a copy of Ownerships
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OwnershipsCopyWith<Ownerships> get copyWith => _$OwnershipsCopyWithImpl<Ownerships>(this as Ownerships, _$identity);

  /// Serializes this Ownerships to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ownerships&&(identical(other.ownershipId, ownershipId) || other.ownershipId == ownershipId)&&(identical(other.ownershipName, ownershipName) || other.ownershipName == ownershipName)&&(identical(other.ownershipCode, ownershipCode) || other.ownershipCode == ownershipCode)&&(identical(other.ownershipStatus, ownershipStatus) || other.ownershipStatus == ownershipStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ownershipId,ownershipName,ownershipCode,ownershipStatus);

@override
String toString() {
  return 'Ownerships(ownershipId: $ownershipId, ownershipName: $ownershipName, ownershipCode: $ownershipCode, ownershipStatus: $ownershipStatus)';
}


}

/// @nodoc
abstract mixin class $OwnershipsCopyWith<$Res>  {
  factory $OwnershipsCopyWith(Ownerships value, $Res Function(Ownerships) _then) = _$OwnershipsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "ownership_id") String? ownershipId,@JsonKey(name: "ownership_name") String? ownershipName,@JsonKey(name: "ownership_code") String? ownershipCode,@JsonKey(name: "ownership_status") String? ownershipStatus
});




}
/// @nodoc
class _$OwnershipsCopyWithImpl<$Res>
    implements $OwnershipsCopyWith<$Res> {
  _$OwnershipsCopyWithImpl(this._self, this._then);

  final Ownerships _self;
  final $Res Function(Ownerships) _then;

/// Create a copy of Ownerships
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ownershipId = freezed,Object? ownershipName = freezed,Object? ownershipCode = freezed,Object? ownershipStatus = freezed,}) {
  return _then(_self.copyWith(
ownershipId: freezed == ownershipId ? _self.ownershipId : ownershipId // ignore: cast_nullable_to_non_nullable
as String?,ownershipName: freezed == ownershipName ? _self.ownershipName : ownershipName // ignore: cast_nullable_to_non_nullable
as String?,ownershipCode: freezed == ownershipCode ? _self.ownershipCode : ownershipCode // ignore: cast_nullable_to_non_nullable
as String?,ownershipStatus: freezed == ownershipStatus ? _self.ownershipStatus : ownershipStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Ownerships].
extension OwnershipsPatterns on Ownerships {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ownerships value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ownerships() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ownerships value)  $default,){
final _that = this;
switch (_that) {
case _Ownerships():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ownerships value)?  $default,){
final _that = this;
switch (_that) {
case _Ownerships() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "ownership_id")  String? ownershipId, @JsonKey(name: "ownership_name")  String? ownershipName, @JsonKey(name: "ownership_code")  String? ownershipCode, @JsonKey(name: "ownership_status")  String? ownershipStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ownerships() when $default != null:
return $default(_that.ownershipId,_that.ownershipName,_that.ownershipCode,_that.ownershipStatus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "ownership_id")  String? ownershipId, @JsonKey(name: "ownership_name")  String? ownershipName, @JsonKey(name: "ownership_code")  String? ownershipCode, @JsonKey(name: "ownership_status")  String? ownershipStatus)  $default,) {final _that = this;
switch (_that) {
case _Ownerships():
return $default(_that.ownershipId,_that.ownershipName,_that.ownershipCode,_that.ownershipStatus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "ownership_id")  String? ownershipId, @JsonKey(name: "ownership_name")  String? ownershipName, @JsonKey(name: "ownership_code")  String? ownershipCode, @JsonKey(name: "ownership_status")  String? ownershipStatus)?  $default,) {final _that = this;
switch (_that) {
case _Ownerships() when $default != null:
return $default(_that.ownershipId,_that.ownershipName,_that.ownershipCode,_that.ownershipStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Ownerships implements Ownerships {
  const _Ownerships({@JsonKey(name: "ownership_id") this.ownershipId, @JsonKey(name: "ownership_name") this.ownershipName, @JsonKey(name: "ownership_code") this.ownershipCode, @JsonKey(name: "ownership_status") this.ownershipStatus});
  factory _Ownerships.fromJson(Map<String, dynamic> json) => _$OwnershipsFromJson(json);

@override@JsonKey(name: "ownership_id") final  String? ownershipId;
@override@JsonKey(name: "ownership_name") final  String? ownershipName;
@override@JsonKey(name: "ownership_code") final  String? ownershipCode;
@override@JsonKey(name: "ownership_status") final  String? ownershipStatus;

/// Create a copy of Ownerships
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OwnershipsCopyWith<_Ownerships> get copyWith => __$OwnershipsCopyWithImpl<_Ownerships>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OwnershipsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ownerships&&(identical(other.ownershipId, ownershipId) || other.ownershipId == ownershipId)&&(identical(other.ownershipName, ownershipName) || other.ownershipName == ownershipName)&&(identical(other.ownershipCode, ownershipCode) || other.ownershipCode == ownershipCode)&&(identical(other.ownershipStatus, ownershipStatus) || other.ownershipStatus == ownershipStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ownershipId,ownershipName,ownershipCode,ownershipStatus);

@override
String toString() {
  return 'Ownerships(ownershipId: $ownershipId, ownershipName: $ownershipName, ownershipCode: $ownershipCode, ownershipStatus: $ownershipStatus)';
}


}

/// @nodoc
abstract mixin class _$OwnershipsCopyWith<$Res> implements $OwnershipsCopyWith<$Res> {
  factory _$OwnershipsCopyWith(_Ownerships value, $Res Function(_Ownerships) _then) = __$OwnershipsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "ownership_id") String? ownershipId,@JsonKey(name: "ownership_name") String? ownershipName,@JsonKey(name: "ownership_code") String? ownershipCode,@JsonKey(name: "ownership_status") String? ownershipStatus
});




}
/// @nodoc
class __$OwnershipsCopyWithImpl<$Res>
    implements _$OwnershipsCopyWith<$Res> {
  __$OwnershipsCopyWithImpl(this._self, this._then);

  final _Ownerships _self;
  final $Res Function(_Ownerships) _then;

/// Create a copy of Ownerships
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ownershipId = freezed,Object? ownershipName = freezed,Object? ownershipCode = freezed,Object? ownershipStatus = freezed,}) {
  return _then(_Ownerships(
ownershipId: freezed == ownershipId ? _self.ownershipId : ownershipId // ignore: cast_nullable_to_non_nullable
as String?,ownershipName: freezed == ownershipName ? _self.ownershipName : ownershipName // ignore: cast_nullable_to_non_nullable
as String?,ownershipCode: freezed == ownershipCode ? _self.ownershipCode : ownershipCode // ignore: cast_nullable_to_non_nullable
as String?,ownershipStatus: freezed == ownershipStatus ? _self.ownershipStatus : ownershipStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Province {

@JsonKey(name: "province_id") String? get provinceId;@JsonKey(name: "province_name") String? get provinceName;
/// Create a copy of Province
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProvinceCopyWith<Province> get copyWith => _$ProvinceCopyWithImpl<Province>(this as Province, _$identity);

  /// Serializes this Province to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Province&&(identical(other.provinceId, provinceId) || other.provinceId == provinceId)&&(identical(other.provinceName, provinceName) || other.provinceName == provinceName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provinceId,provinceName);

@override
String toString() {
  return 'Province(provinceId: $provinceId, provinceName: $provinceName)';
}


}

/// @nodoc
abstract mixin class $ProvinceCopyWith<$Res>  {
  factory $ProvinceCopyWith(Province value, $Res Function(Province) _then) = _$ProvinceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "province_id") String? provinceId,@JsonKey(name: "province_name") String? provinceName
});




}
/// @nodoc
class _$ProvinceCopyWithImpl<$Res>
    implements $ProvinceCopyWith<$Res> {
  _$ProvinceCopyWithImpl(this._self, this._then);

  final Province _self;
  final $Res Function(Province) _then;

/// Create a copy of Province
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provinceId = freezed,Object? provinceName = freezed,}) {
  return _then(_self.copyWith(
provinceId: freezed == provinceId ? _self.provinceId : provinceId // ignore: cast_nullable_to_non_nullable
as String?,provinceName: freezed == provinceName ? _self.provinceName : provinceName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Province].
extension ProvincePatterns on Province {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Province value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Province() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Province value)  $default,){
final _that = this;
switch (_that) {
case _Province():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Province value)?  $default,){
final _that = this;
switch (_that) {
case _Province() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "province_id")  String? provinceId, @JsonKey(name: "province_name")  String? provinceName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Province() when $default != null:
return $default(_that.provinceId,_that.provinceName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "province_id")  String? provinceId, @JsonKey(name: "province_name")  String? provinceName)  $default,) {final _that = this;
switch (_that) {
case _Province():
return $default(_that.provinceId,_that.provinceName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "province_id")  String? provinceId, @JsonKey(name: "province_name")  String? provinceName)?  $default,) {final _that = this;
switch (_that) {
case _Province() when $default != null:
return $default(_that.provinceId,_that.provinceName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Province implements Province {
  const _Province({@JsonKey(name: "province_id") this.provinceId, @JsonKey(name: "province_name") this.provinceName});
  factory _Province.fromJson(Map<String, dynamic> json) => _$ProvinceFromJson(json);

@override@JsonKey(name: "province_id") final  String? provinceId;
@override@JsonKey(name: "province_name") final  String? provinceName;

/// Create a copy of Province
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProvinceCopyWith<_Province> get copyWith => __$ProvinceCopyWithImpl<_Province>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProvinceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Province&&(identical(other.provinceId, provinceId) || other.provinceId == provinceId)&&(identical(other.provinceName, provinceName) || other.provinceName == provinceName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provinceId,provinceName);

@override
String toString() {
  return 'Province(provinceId: $provinceId, provinceName: $provinceName)';
}


}

/// @nodoc
abstract mixin class _$ProvinceCopyWith<$Res> implements $ProvinceCopyWith<$Res> {
  factory _$ProvinceCopyWith(_Province value, $Res Function(_Province) _then) = __$ProvinceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "province_id") String? provinceId,@JsonKey(name: "province_name") String? provinceName
});




}
/// @nodoc
class __$ProvinceCopyWithImpl<$Res>
    implements _$ProvinceCopyWith<$Res> {
  __$ProvinceCopyWithImpl(this._self, this._then);

  final _Province _self;
  final $Res Function(_Province) _then;

/// Create a copy of Province
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provinceId = freezed,Object? provinceName = freezed,}) {
  return _then(_Province(
provinceId: freezed == provinceId ? _self.provinceId : provinceId // ignore: cast_nullable_to_non_nullable
as String?,provinceName: freezed == provinceName ? _self.provinceName : provinceName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ServiceType {

@JsonKey(name: "ftype_id") String? get ftypeId;@JsonKey(name: "ftype_code") String? get ftypeCode;@JsonKey(name: "ftype_name") String? get ftypeName;@JsonKey(name: "ftype_status") String? get ftypeStatus;
/// Create a copy of ServiceType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceTypeCopyWith<ServiceType> get copyWith => _$ServiceTypeCopyWithImpl<ServiceType>(this as ServiceType, _$identity);

  /// Serializes this ServiceType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceType&&(identical(other.ftypeId, ftypeId) || other.ftypeId == ftypeId)&&(identical(other.ftypeCode, ftypeCode) || other.ftypeCode == ftypeCode)&&(identical(other.ftypeName, ftypeName) || other.ftypeName == ftypeName)&&(identical(other.ftypeStatus, ftypeStatus) || other.ftypeStatus == ftypeStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ftypeId,ftypeCode,ftypeName,ftypeStatus);

@override
String toString() {
  return 'ServiceType(ftypeId: $ftypeId, ftypeCode: $ftypeCode, ftypeName: $ftypeName, ftypeStatus: $ftypeStatus)';
}


}

/// @nodoc
abstract mixin class $ServiceTypeCopyWith<$Res>  {
  factory $ServiceTypeCopyWith(ServiceType value, $Res Function(ServiceType) _then) = _$ServiceTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "ftype_id") String? ftypeId,@JsonKey(name: "ftype_code") String? ftypeCode,@JsonKey(name: "ftype_name") String? ftypeName,@JsonKey(name: "ftype_status") String? ftypeStatus
});




}
/// @nodoc
class _$ServiceTypeCopyWithImpl<$Res>
    implements $ServiceTypeCopyWith<$Res> {
  _$ServiceTypeCopyWithImpl(this._self, this._then);

  final ServiceType _self;
  final $Res Function(ServiceType) _then;

/// Create a copy of ServiceType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ftypeId = freezed,Object? ftypeCode = freezed,Object? ftypeName = freezed,Object? ftypeStatus = freezed,}) {
  return _then(_self.copyWith(
ftypeId: freezed == ftypeId ? _self.ftypeId : ftypeId // ignore: cast_nullable_to_non_nullable
as String?,ftypeCode: freezed == ftypeCode ? _self.ftypeCode : ftypeCode // ignore: cast_nullable_to_non_nullable
as String?,ftypeName: freezed == ftypeName ? _self.ftypeName : ftypeName // ignore: cast_nullable_to_non_nullable
as String?,ftypeStatus: freezed == ftypeStatus ? _self.ftypeStatus : ftypeStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceType].
extension ServiceTypePatterns on ServiceType {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceType() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceType value)  $default,){
final _that = this;
switch (_that) {
case _ServiceType():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceType value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceType() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "ftype_id")  String? ftypeId, @JsonKey(name: "ftype_code")  String? ftypeCode, @JsonKey(name: "ftype_name")  String? ftypeName, @JsonKey(name: "ftype_status")  String? ftypeStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceType() when $default != null:
return $default(_that.ftypeId,_that.ftypeCode,_that.ftypeName,_that.ftypeStatus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "ftype_id")  String? ftypeId, @JsonKey(name: "ftype_code")  String? ftypeCode, @JsonKey(name: "ftype_name")  String? ftypeName, @JsonKey(name: "ftype_status")  String? ftypeStatus)  $default,) {final _that = this;
switch (_that) {
case _ServiceType():
return $default(_that.ftypeId,_that.ftypeCode,_that.ftypeName,_that.ftypeStatus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "ftype_id")  String? ftypeId, @JsonKey(name: "ftype_code")  String? ftypeCode, @JsonKey(name: "ftype_name")  String? ftypeName, @JsonKey(name: "ftype_status")  String? ftypeStatus)?  $default,) {final _that = this;
switch (_that) {
case _ServiceType() when $default != null:
return $default(_that.ftypeId,_that.ftypeCode,_that.ftypeName,_that.ftypeStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceType implements ServiceType {
  const _ServiceType({@JsonKey(name: "ftype_id") this.ftypeId, @JsonKey(name: "ftype_code") this.ftypeCode, @JsonKey(name: "ftype_name") this.ftypeName, @JsonKey(name: "ftype_status") this.ftypeStatus});
  factory _ServiceType.fromJson(Map<String, dynamic> json) => _$ServiceTypeFromJson(json);

@override@JsonKey(name: "ftype_id") final  String? ftypeId;
@override@JsonKey(name: "ftype_code") final  String? ftypeCode;
@override@JsonKey(name: "ftype_name") final  String? ftypeName;
@override@JsonKey(name: "ftype_status") final  String? ftypeStatus;

/// Create a copy of ServiceType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceTypeCopyWith<_ServiceType> get copyWith => __$ServiceTypeCopyWithImpl<_ServiceType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceType&&(identical(other.ftypeId, ftypeId) || other.ftypeId == ftypeId)&&(identical(other.ftypeCode, ftypeCode) || other.ftypeCode == ftypeCode)&&(identical(other.ftypeName, ftypeName) || other.ftypeName == ftypeName)&&(identical(other.ftypeStatus, ftypeStatus) || other.ftypeStatus == ftypeStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ftypeId,ftypeCode,ftypeName,ftypeStatus);

@override
String toString() {
  return 'ServiceType(ftypeId: $ftypeId, ftypeCode: $ftypeCode, ftypeName: $ftypeName, ftypeStatus: $ftypeStatus)';
}


}

/// @nodoc
abstract mixin class _$ServiceTypeCopyWith<$Res> implements $ServiceTypeCopyWith<$Res> {
  factory _$ServiceTypeCopyWith(_ServiceType value, $Res Function(_ServiceType) _then) = __$ServiceTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "ftype_id") String? ftypeId,@JsonKey(name: "ftype_code") String? ftypeCode,@JsonKey(name: "ftype_name") String? ftypeName,@JsonKey(name: "ftype_status") String? ftypeStatus
});




}
/// @nodoc
class __$ServiceTypeCopyWithImpl<$Res>
    implements _$ServiceTypeCopyWith<$Res> {
  __$ServiceTypeCopyWithImpl(this._self, this._then);

  final _ServiceType _self;
  final $Res Function(_ServiceType) _then;

/// Create a copy of ServiceType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ftypeId = freezed,Object? ftypeCode = freezed,Object? ftypeName = freezed,Object? ftypeStatus = freezed,}) {
  return _then(_ServiceType(
ftypeId: freezed == ftypeId ? _self.ftypeId : ftypeId // ignore: cast_nullable_to_non_nullable
as String?,ftypeCode: freezed == ftypeCode ? _self.ftypeCode : ftypeCode // ignore: cast_nullable_to_non_nullable
as String?,ftypeName: freezed == ftypeName ? _self.ftypeName : ftypeName // ignore: cast_nullable_to_non_nullable
as String?,ftypeStatus: freezed == ftypeStatus ? _self.ftypeStatus : ftypeStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
