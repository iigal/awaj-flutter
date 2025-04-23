// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_table_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComplaintTableState _$ComplaintTableStateFromJson(Map<String, dynamic> json) {
  return _ComplaintTableState.fromJson(json);
}

/// @nodoc
mixin _$ComplaintTableState {
  String get searchTerm => throw _privateConstructorUsedError;
  List<String> get statusFilters => throw _privateConstructorUsedError;

  /// Serializes this ComplaintTableState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComplaintTableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComplaintTableStateCopyWith<ComplaintTableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintTableStateCopyWith<$Res> {
  factory $ComplaintTableStateCopyWith(
          ComplaintTableState value, $Res Function(ComplaintTableState) then) =
      _$ComplaintTableStateCopyWithImpl<$Res, ComplaintTableState>;
  @useResult
  $Res call({String searchTerm, List<String> statusFilters});
}

/// @nodoc
class _$ComplaintTableStateCopyWithImpl<$Res, $Val extends ComplaintTableState>
    implements $ComplaintTableStateCopyWith<$Res> {
  _$ComplaintTableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComplaintTableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = null,
    Object? statusFilters = null,
  }) {
    return _then(_value.copyWith(
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
      statusFilters: null == statusFilters
          ? _value.statusFilters
          : statusFilters // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComplaintTableStateImplCopyWith<$Res>
    implements $ComplaintTableStateCopyWith<$Res> {
  factory _$$ComplaintTableStateImplCopyWith(_$ComplaintTableStateImpl value,
          $Res Function(_$ComplaintTableStateImpl) then) =
      __$$ComplaintTableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchTerm, List<String> statusFilters});
}

/// @nodoc
class __$$ComplaintTableStateImplCopyWithImpl<$Res>
    extends _$ComplaintTableStateCopyWithImpl<$Res, _$ComplaintTableStateImpl>
    implements _$$ComplaintTableStateImplCopyWith<$Res> {
  __$$ComplaintTableStateImplCopyWithImpl(_$ComplaintTableStateImpl _value,
      $Res Function(_$ComplaintTableStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComplaintTableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = null,
    Object? statusFilters = null,
  }) {
    return _then(_$ComplaintTableStateImpl(
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
      statusFilters: null == statusFilters
          ? _value._statusFilters
          : statusFilters // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ComplaintTableStateImpl implements _ComplaintTableState {
  _$ComplaintTableStateImpl(
      {this.searchTerm = "", final List<String> statusFilters = const []})
      : _statusFilters = statusFilters;

  factory _$ComplaintTableStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplaintTableStateImplFromJson(json);

  @override
  @JsonKey()
  final String searchTerm;
  final List<String> _statusFilters;
  @override
  @JsonKey()
  List<String> get statusFilters {
    if (_statusFilters is EqualUnmodifiableListView) return _statusFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statusFilters);
  }

  @override
  String toString() {
    return 'ComplaintTableState(searchTerm: $searchTerm, statusFilters: $statusFilters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintTableStateImpl &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            const DeepCollectionEquality()
                .equals(other._statusFilters, _statusFilters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, searchTerm,
      const DeepCollectionEquality().hash(_statusFilters));

  /// Create a copy of ComplaintTableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplaintTableStateImplCopyWith<_$ComplaintTableStateImpl> get copyWith =>
      __$$ComplaintTableStateImplCopyWithImpl<_$ComplaintTableStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplaintTableStateImplToJson(
      this,
    );
  }
}

abstract class _ComplaintTableState implements ComplaintTableState {
  factory _ComplaintTableState(
      {final String searchTerm,
      final List<String> statusFilters}) = _$ComplaintTableStateImpl;

  factory _ComplaintTableState.fromJson(Map<String, dynamic> json) =
      _$ComplaintTableStateImpl.fromJson;

  @override
  String get searchTerm;
  @override
  List<String> get statusFilters;

  /// Create a copy of ComplaintTableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComplaintTableStateImplCopyWith<_$ComplaintTableStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
