// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_table_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ComplaintTableState {

 String get searchTerm; List<String> get statusFilters;
/// Create a copy of ComplaintTableState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintTableStateCopyWith<ComplaintTableState> get copyWith => _$ComplaintTableStateCopyWithImpl<ComplaintTableState>(this as ComplaintTableState, _$identity);

  /// Serializes this ComplaintTableState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintTableState&&(identical(other.searchTerm, searchTerm) || other.searchTerm == searchTerm)&&const DeepCollectionEquality().equals(other.statusFilters, statusFilters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchTerm,const DeepCollectionEquality().hash(statusFilters));

@override
String toString() {
  return 'ComplaintTableState(searchTerm: $searchTerm, statusFilters: $statusFilters)';
}


}

/// @nodoc
abstract mixin class $ComplaintTableStateCopyWith<$Res>  {
  factory $ComplaintTableStateCopyWith(ComplaintTableState value, $Res Function(ComplaintTableState) _then) = _$ComplaintTableStateCopyWithImpl;
@useResult
$Res call({
 String searchTerm, List<String> statusFilters
});




}
/// @nodoc
class _$ComplaintTableStateCopyWithImpl<$Res>
    implements $ComplaintTableStateCopyWith<$Res> {
  _$ComplaintTableStateCopyWithImpl(this._self, this._then);

  final ComplaintTableState _self;
  final $Res Function(ComplaintTableState) _then;

/// Create a copy of ComplaintTableState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchTerm = null,Object? statusFilters = null,}) {
  return _then(_self.copyWith(
searchTerm: null == searchTerm ? _self.searchTerm : searchTerm // ignore: cast_nullable_to_non_nullable
as String,statusFilters: null == statusFilters ? _self.statusFilters : statusFilters // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintTableState].
extension ComplaintTableStatePatterns on ComplaintTableState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintTableState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintTableState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintTableState value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintTableState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintTableState value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintTableState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String searchTerm,  List<String> statusFilters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintTableState() when $default != null:
return $default(_that.searchTerm,_that.statusFilters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String searchTerm,  List<String> statusFilters)  $default,) {final _that = this;
switch (_that) {
case _ComplaintTableState():
return $default(_that.searchTerm,_that.statusFilters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String searchTerm,  List<String> statusFilters)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintTableState() when $default != null:
return $default(_that.searchTerm,_that.statusFilters);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ComplaintTableState implements ComplaintTableState {
   _ComplaintTableState({this.searchTerm = "", final  List<String> statusFilters = const []}): _statusFilters = statusFilters;
  factory _ComplaintTableState.fromJson(Map<String, dynamic> json) => _$ComplaintTableStateFromJson(json);

@override@JsonKey() final  String searchTerm;
 final  List<String> _statusFilters;
@override@JsonKey() List<String> get statusFilters {
  if (_statusFilters is EqualUnmodifiableListView) return _statusFilters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_statusFilters);
}


/// Create a copy of ComplaintTableState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintTableStateCopyWith<_ComplaintTableState> get copyWith => __$ComplaintTableStateCopyWithImpl<_ComplaintTableState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintTableStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintTableState&&(identical(other.searchTerm, searchTerm) || other.searchTerm == searchTerm)&&const DeepCollectionEquality().equals(other._statusFilters, _statusFilters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchTerm,const DeepCollectionEquality().hash(_statusFilters));

@override
String toString() {
  return 'ComplaintTableState(searchTerm: $searchTerm, statusFilters: $statusFilters)';
}


}

/// @nodoc
abstract mixin class _$ComplaintTableStateCopyWith<$Res> implements $ComplaintTableStateCopyWith<$Res> {
  factory _$ComplaintTableStateCopyWith(_ComplaintTableState value, $Res Function(_ComplaintTableState) _then) = __$ComplaintTableStateCopyWithImpl;
@override @useResult
$Res call({
 String searchTerm, List<String> statusFilters
});




}
/// @nodoc
class __$ComplaintTableStateCopyWithImpl<$Res>
    implements _$ComplaintTableStateCopyWith<$Res> {
  __$ComplaintTableStateCopyWithImpl(this._self, this._then);

  final _ComplaintTableState _self;
  final $Res Function(_ComplaintTableState) _then;

/// Create a copy of ComplaintTableState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchTerm = null,Object? statusFilters = null,}) {
  return _then(_ComplaintTableState(
searchTerm: null == searchTerm ? _self.searchTerm : searchTerm // ignore: cast_nullable_to_non_nullable
as String,statusFilters: null == statusFilters ? _self._statusFilters : statusFilters // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
