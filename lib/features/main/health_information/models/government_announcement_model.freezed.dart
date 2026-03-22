// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'government_announcement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Announcement {

@JsonKey(name: "collectionId") String? get collectionId;@JsonKey(name: "collectionName") String? get collectionName;@JsonKey(name: "content") String get content;@JsonKey(name: "created") DateTime get created;@JsonKey(name: "full_summary") String get fullSummary;@JsonKey(name: "id") String? get id;@JsonKey(name: "meta_data") dynamic get metaData;@JsonKey(name: "priority") List<String> get priority;@JsonKey(name: "status") bool? get status;@JsonKey(name: "summary") String? get summary;@JsonKey(name: "title") String get title;@JsonKey(name: "updated") DateTime? get updated;
/// Create a copy of Announcement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnnouncementCopyWith<Announcement> get copyWith => _$AnnouncementCopyWithImpl<Announcement>(this as Announcement, _$identity);

  /// Serializes this Announcement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Announcement&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.content, content) || other.content == content)&&(identical(other.created, created) || other.created == created)&&(identical(other.fullSummary, fullSummary) || other.fullSummary == fullSummary)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.metaData, metaData)&&const DeepCollectionEquality().equals(other.priority, priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.title, title) || other.title == title)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,content,created,fullSummary,id,const DeepCollectionEquality().hash(metaData),const DeepCollectionEquality().hash(priority),status,summary,title,updated);

@override
String toString() {
  return 'Announcement(collectionId: $collectionId, collectionName: $collectionName, content: $content, created: $created, fullSummary: $fullSummary, id: $id, metaData: $metaData, priority: $priority, status: $status, summary: $summary, title: $title, updated: $updated)';
}


}

/// @nodoc
abstract mixin class $AnnouncementCopyWith<$Res>  {
  factory $AnnouncementCopyWith(Announcement value, $Res Function(Announcement) _then) = _$AnnouncementCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "collectionId") String? collectionId,@JsonKey(name: "collectionName") String? collectionName,@JsonKey(name: "content") String content,@JsonKey(name: "created") DateTime created,@JsonKey(name: "full_summary") String fullSummary,@JsonKey(name: "id") String? id,@JsonKey(name: "meta_data") dynamic metaData,@JsonKey(name: "priority") List<String> priority,@JsonKey(name: "status") bool? status,@JsonKey(name: "summary") String? summary,@JsonKey(name: "title") String title,@JsonKey(name: "updated") DateTime? updated
});




}
/// @nodoc
class _$AnnouncementCopyWithImpl<$Res>
    implements $AnnouncementCopyWith<$Res> {
  _$AnnouncementCopyWithImpl(this._self, this._then);

  final Announcement _self;
  final $Res Function(Announcement) _then;

/// Create a copy of Announcement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collectionId = freezed,Object? collectionName = freezed,Object? content = null,Object? created = null,Object? fullSummary = null,Object? id = freezed,Object? metaData = freezed,Object? priority = null,Object? status = freezed,Object? summary = freezed,Object? title = null,Object? updated = freezed,}) {
  return _then(_self.copyWith(
collectionId: freezed == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String?,collectionName: freezed == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,fullSummary: null == fullSummary ? _self.fullSummary : fullSummary // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,metaData: freezed == metaData ? _self.metaData : metaData // ignore: cast_nullable_to_non_nullable
as dynamic,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as List<String>,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,updated: freezed == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Announcement].
extension AnnouncementPatterns on Announcement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Announcement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Announcement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Announcement value)  $default,){
final _that = this;
switch (_that) {
case _Announcement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Announcement value)?  $default,){
final _that = this;
switch (_that) {
case _Announcement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "collectionId")  String? collectionId, @JsonKey(name: "collectionName")  String? collectionName, @JsonKey(name: "content")  String content, @JsonKey(name: "created")  DateTime created, @JsonKey(name: "full_summary")  String fullSummary, @JsonKey(name: "id")  String? id, @JsonKey(name: "meta_data")  dynamic metaData, @JsonKey(name: "priority")  List<String> priority, @JsonKey(name: "status")  bool? status, @JsonKey(name: "summary")  String? summary, @JsonKey(name: "title")  String title, @JsonKey(name: "updated")  DateTime? updated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Announcement() when $default != null:
return $default(_that.collectionId,_that.collectionName,_that.content,_that.created,_that.fullSummary,_that.id,_that.metaData,_that.priority,_that.status,_that.summary,_that.title,_that.updated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "collectionId")  String? collectionId, @JsonKey(name: "collectionName")  String? collectionName, @JsonKey(name: "content")  String content, @JsonKey(name: "created")  DateTime created, @JsonKey(name: "full_summary")  String fullSummary, @JsonKey(name: "id")  String? id, @JsonKey(name: "meta_data")  dynamic metaData, @JsonKey(name: "priority")  List<String> priority, @JsonKey(name: "status")  bool? status, @JsonKey(name: "summary")  String? summary, @JsonKey(name: "title")  String title, @JsonKey(name: "updated")  DateTime? updated)  $default,) {final _that = this;
switch (_that) {
case _Announcement():
return $default(_that.collectionId,_that.collectionName,_that.content,_that.created,_that.fullSummary,_that.id,_that.metaData,_that.priority,_that.status,_that.summary,_that.title,_that.updated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "collectionId")  String? collectionId, @JsonKey(name: "collectionName")  String? collectionName, @JsonKey(name: "content")  String content, @JsonKey(name: "created")  DateTime created, @JsonKey(name: "full_summary")  String fullSummary, @JsonKey(name: "id")  String? id, @JsonKey(name: "meta_data")  dynamic metaData, @JsonKey(name: "priority")  List<String> priority, @JsonKey(name: "status")  bool? status, @JsonKey(name: "summary")  String? summary, @JsonKey(name: "title")  String title, @JsonKey(name: "updated")  DateTime? updated)?  $default,) {final _that = this;
switch (_that) {
case _Announcement() when $default != null:
return $default(_that.collectionId,_that.collectionName,_that.content,_that.created,_that.fullSummary,_that.id,_that.metaData,_that.priority,_that.status,_that.summary,_that.title,_that.updated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Announcement implements Announcement {
  const _Announcement({@JsonKey(name: "collectionId") this.collectionId, @JsonKey(name: "collectionName") this.collectionName, @JsonKey(name: "content") required this.content, @JsonKey(name: "created") required this.created, @JsonKey(name: "full_summary") required this.fullSummary, @JsonKey(name: "id") this.id, @JsonKey(name: "meta_data") this.metaData, @JsonKey(name: "priority") required final  List<String> priority, @JsonKey(name: "status") this.status, @JsonKey(name: "summary") this.summary, @JsonKey(name: "title") required this.title, @JsonKey(name: "updated") this.updated}): _priority = priority;
  factory _Announcement.fromJson(Map<String, dynamic> json) => _$AnnouncementFromJson(json);

@override@JsonKey(name: "collectionId") final  String? collectionId;
@override@JsonKey(name: "collectionName") final  String? collectionName;
@override@JsonKey(name: "content") final  String content;
@override@JsonKey(name: "created") final  DateTime created;
@override@JsonKey(name: "full_summary") final  String fullSummary;
@override@JsonKey(name: "id") final  String? id;
@override@JsonKey(name: "meta_data") final  dynamic metaData;
 final  List<String> _priority;
@override@JsonKey(name: "priority") List<String> get priority {
  if (_priority is EqualUnmodifiableListView) return _priority;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_priority);
}

@override@JsonKey(name: "status") final  bool? status;
@override@JsonKey(name: "summary") final  String? summary;
@override@JsonKey(name: "title") final  String title;
@override@JsonKey(name: "updated") final  DateTime? updated;

/// Create a copy of Announcement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnnouncementCopyWith<_Announcement> get copyWith => __$AnnouncementCopyWithImpl<_Announcement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnnouncementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Announcement&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.content, content) || other.content == content)&&(identical(other.created, created) || other.created == created)&&(identical(other.fullSummary, fullSummary) || other.fullSummary == fullSummary)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.metaData, metaData)&&const DeepCollectionEquality().equals(other._priority, _priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.title, title) || other.title == title)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,content,created,fullSummary,id,const DeepCollectionEquality().hash(metaData),const DeepCollectionEquality().hash(_priority),status,summary,title,updated);

@override
String toString() {
  return 'Announcement(collectionId: $collectionId, collectionName: $collectionName, content: $content, created: $created, fullSummary: $fullSummary, id: $id, metaData: $metaData, priority: $priority, status: $status, summary: $summary, title: $title, updated: $updated)';
}


}

/// @nodoc
abstract mixin class _$AnnouncementCopyWith<$Res> implements $AnnouncementCopyWith<$Res> {
  factory _$AnnouncementCopyWith(_Announcement value, $Res Function(_Announcement) _then) = __$AnnouncementCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "collectionId") String? collectionId,@JsonKey(name: "collectionName") String? collectionName,@JsonKey(name: "content") String content,@JsonKey(name: "created") DateTime created,@JsonKey(name: "full_summary") String fullSummary,@JsonKey(name: "id") String? id,@JsonKey(name: "meta_data") dynamic metaData,@JsonKey(name: "priority") List<String> priority,@JsonKey(name: "status") bool? status,@JsonKey(name: "summary") String? summary,@JsonKey(name: "title") String title,@JsonKey(name: "updated") DateTime? updated
});




}
/// @nodoc
class __$AnnouncementCopyWithImpl<$Res>
    implements _$AnnouncementCopyWith<$Res> {
  __$AnnouncementCopyWithImpl(this._self, this._then);

  final _Announcement _self;
  final $Res Function(_Announcement) _then;

/// Create a copy of Announcement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collectionId = freezed,Object? collectionName = freezed,Object? content = null,Object? created = null,Object? fullSummary = null,Object? id = freezed,Object? metaData = freezed,Object? priority = null,Object? status = freezed,Object? summary = freezed,Object? title = null,Object? updated = freezed,}) {
  return _then(_Announcement(
collectionId: freezed == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String?,collectionName: freezed == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,fullSummary: null == fullSummary ? _self.fullSummary : fullSummary // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,metaData: freezed == metaData ? _self.metaData : metaData // ignore: cast_nullable_to_non_nullable
as dynamic,priority: null == priority ? _self._priority : priority // ignore: cast_nullable_to_non_nullable
as List<String>,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,updated: freezed == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
