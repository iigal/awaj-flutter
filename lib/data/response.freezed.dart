// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiResponse {

 bool get success; String? get message; List<dynamic> get data;
/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseCopyWith<ApiResponse> get copyWith => _$ApiResponseCopyWithImpl<ApiResponse>(this as ApiResponse, _$identity);

  /// Serializes this ApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ApiResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $ApiResponseCopyWith<$Res>  {
  factory $ApiResponseCopyWith(ApiResponse value, $Res Function(ApiResponse) _then) = _$ApiResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String? message, List<dynamic> data
});




}
/// @nodoc
class _$ApiResponseCopyWithImpl<$Res>
    implements $ApiResponseCopyWith<$Res> {
  _$ApiResponseCopyWithImpl(this._self, this._then);

  final ApiResponse _self;
  final $Res Function(ApiResponse) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiResponse].
extension ApiResponsePatterns on ApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _ApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String? message,  List<dynamic> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String? message,  List<dynamic> data)  $default,) {final _that = this;
switch (_that) {
case _ApiResponse():
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String? message,  List<dynamic> data)?  $default,) {final _that = this;
switch (_that) {
case _ApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiResponse implements ApiResponse {
   _ApiResponse({required this.success, this.message, required final  List<dynamic> data}): _data = data;
  factory _ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);

@override final  bool success;
@override final  String? message;
 final  List<dynamic> _data;
@override List<dynamic> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiResponseCopyWith<_ApiResponse> get copyWith => __$ApiResponseCopyWithImpl<_ApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ApiResponse(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ApiResponseCopyWith<$Res> implements $ApiResponseCopyWith<$Res> {
  factory _$ApiResponseCopyWith(_ApiResponse value, $Res Function(_ApiResponse) _then) = __$ApiResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String? message, List<dynamic> data
});




}
/// @nodoc
class __$ApiResponseCopyWithImpl<$Res>
    implements _$ApiResponseCopyWith<$Res> {
  __$ApiResponseCopyWithImpl(this._self, this._then);

  final _ApiResponse _self;
  final $Res Function(_ApiResponse) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = freezed,Object? data = null,}) {
  return _then(_ApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}


/// @nodoc
mixin _$PaginatedResponse<T> {

 int? get page; int? get perPage; int? get totalPages; int? get totalItems; List<T>? get items;
/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<T, PaginatedResponse<T>> get copyWith => _$PaginatedResponseCopyWithImpl<T, PaginatedResponse<T>>(this as PaginatedResponse<T>, _$identity);

  /// Serializes this PaginatedResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedResponse<T>&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,perPage,totalPages,totalItems,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'PaginatedResponse<$T>(page: $page, perPage: $perPage, totalPages: $totalPages, totalItems: $totalItems, items: $items)';
}


}

/// @nodoc
abstract mixin class $PaginatedResponseCopyWith<T,$Res>  {
  factory $PaginatedResponseCopyWith(PaginatedResponse<T> value, $Res Function(PaginatedResponse<T>) _then) = _$PaginatedResponseCopyWithImpl;
@useResult
$Res call({
 int? page, int? perPage, int? totalPages, int? totalItems, List<T>? items
});




}
/// @nodoc
class _$PaginatedResponseCopyWithImpl<T,$Res>
    implements $PaginatedResponseCopyWith<T, $Res> {
  _$PaginatedResponseCopyWithImpl(this._self, this._then);

  final PaginatedResponse<T> _self;
  final $Res Function(PaginatedResponse<T>) _then;

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? perPage = freezed,Object? totalPages = freezed,Object? totalItems = freezed,Object? items = freezed,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedResponse].
extension PaginatedResponsePatterns<T> on PaginatedResponse<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedResponse<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedResponse<T> value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedResponse<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? page,  int? perPage,  int? totalPages,  int? totalItems,  List<T>? items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
return $default(_that.page,_that.perPage,_that.totalPages,_that.totalItems,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? page,  int? perPage,  int? totalPages,  int? totalItems,  List<T>? items)  $default,) {final _that = this;
switch (_that) {
case _PaginatedResponse():
return $default(_that.page,_that.perPage,_that.totalPages,_that.totalItems,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? page,  int? perPage,  int? totalPages,  int? totalItems,  List<T>? items)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
return $default(_that.page,_that.perPage,_that.totalPages,_that.totalItems,_that.items);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(genericArgumentFactories: true, fieldRename: FieldRename.snake)
class _PaginatedResponse<T> implements PaginatedResponse<T> {
  const _PaginatedResponse({this.page, this.perPage, this.totalPages, this.totalItems, final  List<T>? items}): _items = items;
  factory _PaginatedResponse.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$PaginatedResponseFromJson(json,fromJsonT);

@override final  int? page;
@override final  int? perPage;
@override final  int? totalPages;
@override final  int? totalItems;
 final  List<T>? _items;
@override List<T>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedResponseCopyWith<T, _PaginatedResponse<T>> get copyWith => __$PaginatedResponseCopyWithImpl<T, _PaginatedResponse<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$PaginatedResponseToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedResponse<T>&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,perPage,totalPages,totalItems,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'PaginatedResponse<$T>(page: $page, perPage: $perPage, totalPages: $totalPages, totalItems: $totalItems, items: $items)';
}


}

/// @nodoc
abstract mixin class _$PaginatedResponseCopyWith<T,$Res> implements $PaginatedResponseCopyWith<T, $Res> {
  factory _$PaginatedResponseCopyWith(_PaginatedResponse<T> value, $Res Function(_PaginatedResponse<T>) _then) = __$PaginatedResponseCopyWithImpl;
@override @useResult
$Res call({
 int? page, int? perPage, int? totalPages, int? totalItems, List<T>? items
});




}
/// @nodoc
class __$PaginatedResponseCopyWithImpl<T,$Res>
    implements _$PaginatedResponseCopyWith<T, $Res> {
  __$PaginatedResponseCopyWithImpl(this._self, this._then);

  final _PaginatedResponse<T> _self;
  final $Res Function(_PaginatedResponse<T>) _then;

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? perPage = freezed,Object? totalPages = freezed,Object? totalItems = freezed,Object? items = freezed,}) {
  return _then(_PaginatedResponse<T>(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>?,
  ));
}


}

// dart format on
