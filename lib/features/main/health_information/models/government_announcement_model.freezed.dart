// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'government_announcement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Announcement _$AnnouncementFromJson(Map<String, dynamic> json) {
  return _Announcement.fromJson(json);
}

/// @nodoc
mixin _$Announcement {
  @JsonKey(name: "collectionId")
  String? get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "collectionName")
  String? get collectionName => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(name: "full_summary")
  String get fullSummary => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_data")
  dynamic get metaData => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  List<String> get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "summary")
  String? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "updated")
  DateTime? get updated => throw _privateConstructorUsedError;

  /// Serializes this Announcement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementCopyWith<Announcement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementCopyWith<$Res> {
  factory $AnnouncementCopyWith(
          Announcement value, $Res Function(Announcement) then) =
      _$AnnouncementCopyWithImpl<$Res, Announcement>;
  @useResult
  $Res call(
      {@JsonKey(name: "collectionId") String? collectionId,
      @JsonKey(name: "collectionName") String? collectionName,
      @JsonKey(name: "content") String content,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "full_summary") String fullSummary,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "meta_data") dynamic metaData,
      @JsonKey(name: "priority") List<String> priority,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "summary") String? summary,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "updated") DateTime? updated});
}

/// @nodoc
class _$AnnouncementCopyWithImpl<$Res, $Val extends Announcement>
    implements $AnnouncementCopyWith<$Res> {
  _$AnnouncementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? content = null,
    Object? created = null,
    Object? fullSummary = null,
    Object? id = freezed,
    Object? metaData = freezed,
    Object? priority = null,
    Object? status = freezed,
    Object? summary = freezed,
    Object? title = null,
    Object? updated = freezed,
  }) {
    return _then(_value.copyWith(
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fullSummary: null == fullSummary
          ? _value.fullSummary
          : fullSummary // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnouncementImplCopyWith<$Res>
    implements $AnnouncementCopyWith<$Res> {
  factory _$$AnnouncementImplCopyWith(
          _$AnnouncementImpl value, $Res Function(_$AnnouncementImpl) then) =
      __$$AnnouncementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "collectionId") String? collectionId,
      @JsonKey(name: "collectionName") String? collectionName,
      @JsonKey(name: "content") String content,
      @JsonKey(name: "created") DateTime created,
      @JsonKey(name: "full_summary") String fullSummary,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "meta_data") dynamic metaData,
      @JsonKey(name: "priority") List<String> priority,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "summary") String? summary,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "updated") DateTime? updated});
}

/// @nodoc
class __$$AnnouncementImplCopyWithImpl<$Res>
    extends _$AnnouncementCopyWithImpl<$Res, _$AnnouncementImpl>
    implements _$$AnnouncementImplCopyWith<$Res> {
  __$$AnnouncementImplCopyWithImpl(
      _$AnnouncementImpl _value, $Res Function(_$AnnouncementImpl) _then)
      : super(_value, _then);

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? content = null,
    Object? created = null,
    Object? fullSummary = null,
    Object? id = freezed,
    Object? metaData = freezed,
    Object? priority = null,
    Object? status = freezed,
    Object? summary = freezed,
    Object? title = null,
    Object? updated = freezed,
  }) {
    return _then(_$AnnouncementImpl(
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fullSummary: null == fullSummary
          ? _value.fullSummary
          : fullSummary // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      priority: null == priority
          ? _value._priority
          : priority // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnouncementImpl implements _Announcement {
  const _$AnnouncementImpl(
      {@JsonKey(name: "collectionId") this.collectionId,
      @JsonKey(name: "collectionName") this.collectionName,
      @JsonKey(name: "content") required this.content,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "full_summary") required this.fullSummary,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "meta_data") this.metaData,
      @JsonKey(name: "priority") required final List<String> priority,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "summary") this.summary,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "updated") this.updated})
      : _priority = priority;

  factory _$AnnouncementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnouncementImplFromJson(json);

  @override
  @JsonKey(name: "collectionId")
  final String? collectionId;
  @override
  @JsonKey(name: "collectionName")
  final String? collectionName;
  @override
  @JsonKey(name: "content")
  final String content;
  @override
  @JsonKey(name: "created")
  final DateTime created;
  @override
  @JsonKey(name: "full_summary")
  final String fullSummary;
  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "meta_data")
  final dynamic metaData;
  final List<String> _priority;
  @override
  @JsonKey(name: "priority")
  List<String> get priority {
    if (_priority is EqualUnmodifiableListView) return _priority;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_priority);
  }

  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "summary")
  final String? summary;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "updated")
  final DateTime? updated;

  @override
  String toString() {
    return 'Announcement(collectionId: $collectionId, collectionName: $collectionName, content: $content, created: $created, fullSummary: $fullSummary, id: $id, metaData: $metaData, priority: $priority, status: $status, summary: $summary, title: $title, updated: $updated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementImpl &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.fullSummary, fullSummary) ||
                other.fullSummary == fullSummary) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.metaData, metaData) &&
            const DeepCollectionEquality().equals(other._priority, _priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      collectionId,
      collectionName,
      content,
      created,
      fullSummary,
      id,
      const DeepCollectionEquality().hash(metaData),
      const DeepCollectionEquality().hash(_priority),
      status,
      summary,
      title,
      updated);

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementImplCopyWith<_$AnnouncementImpl> get copyWith =>
      __$$AnnouncementImplCopyWithImpl<_$AnnouncementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementImplToJson(
      this,
    );
  }
}

abstract class _Announcement implements Announcement {
  const factory _Announcement(
      {@JsonKey(name: "collectionId") final String? collectionId,
      @JsonKey(name: "collectionName") final String? collectionName,
      @JsonKey(name: "content") required final String content,
      @JsonKey(name: "created") required final DateTime created,
      @JsonKey(name: "full_summary") required final String fullSummary,
      @JsonKey(name: "id") final String? id,
      @JsonKey(name: "meta_data") final dynamic metaData,
      @JsonKey(name: "priority") required final List<String> priority,
      @JsonKey(name: "status") final bool? status,
      @JsonKey(name: "summary") final String? summary,
      @JsonKey(name: "title") required final String title,
      @JsonKey(name: "updated") final DateTime? updated}) = _$AnnouncementImpl;

  factory _Announcement.fromJson(Map<String, dynamic> json) =
      _$AnnouncementImpl.fromJson;

  @override
  @JsonKey(name: "collectionId")
  String? get collectionId;
  @override
  @JsonKey(name: "collectionName")
  String? get collectionName;
  @override
  @JsonKey(name: "content")
  String get content;
  @override
  @JsonKey(name: "created")
  DateTime get created;
  @override
  @JsonKey(name: "full_summary")
  String get fullSummary;
  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "meta_data")
  dynamic get metaData;
  @override
  @JsonKey(name: "priority")
  List<String> get priority;
  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "summary")
  String? get summary;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "updated")
  DateTime? get updated;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementImplCopyWith<_$AnnouncementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
