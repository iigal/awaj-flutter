// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaints_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Categories {

@JsonKey(name: "collectionId") String? get collectionId;@JsonKey(name: "collectionName") String? get collectionName;@JsonKey(name: "id") String? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "description") String? get description;@JsonKey(name: "assignedTo") String? get assignedTo;@JsonKey(name: "teamMembers") List<String>? get teamMembers;@JsonKey(name: "prefix") String? get prefix;@JsonKey(name: "code") String? get code;@JsonKey(name: "created") DateTime? get created;@JsonKey(name: "updated") DateTime? get updated;
/// Create a copy of Categories
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesCopyWith<Categories> get copyWith => _$CategoriesCopyWithImpl<Categories>(this as Categories, _$identity);

  /// Serializes this Categories to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Categories&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&const DeepCollectionEquality().equals(other.teamMembers, teamMembers)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.code, code) || other.code == code)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,id,name,description,assignedTo,const DeepCollectionEquality().hash(teamMembers),prefix,code,created,updated);

@override
String toString() {
  return 'Categories(collectionId: $collectionId, collectionName: $collectionName, id: $id, name: $name, description: $description, assignedTo: $assignedTo, teamMembers: $teamMembers, prefix: $prefix, code: $code, created: $created, updated: $updated)';
}


}

/// @nodoc
abstract mixin class $CategoriesCopyWith<$Res>  {
  factory $CategoriesCopyWith(Categories value, $Res Function(Categories) _then) = _$CategoriesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "collectionId") String? collectionId,@JsonKey(name: "collectionName") String? collectionName,@JsonKey(name: "id") String? id,@JsonKey(name: "name") String? name,@JsonKey(name: "description") String? description,@JsonKey(name: "assignedTo") String? assignedTo,@JsonKey(name: "teamMembers") List<String>? teamMembers,@JsonKey(name: "prefix") String? prefix,@JsonKey(name: "code") String? code,@JsonKey(name: "created") DateTime? created,@JsonKey(name: "updated") DateTime? updated
});




}
/// @nodoc
class _$CategoriesCopyWithImpl<$Res>
    implements $CategoriesCopyWith<$Res> {
  _$CategoriesCopyWithImpl(this._self, this._then);

  final Categories _self;
  final $Res Function(Categories) _then;

/// Create a copy of Categories
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collectionId = freezed,Object? collectionName = freezed,Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? assignedTo = freezed,Object? teamMembers = freezed,Object? prefix = freezed,Object? code = freezed,Object? created = freezed,Object? updated = freezed,}) {
  return _then(_self.copyWith(
collectionId: freezed == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String?,collectionName: freezed == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,teamMembers: freezed == teamMembers ? _self.teamMembers : teamMembers // ignore: cast_nullable_to_non_nullable
as List<String>?,prefix: freezed == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime?,updated: freezed == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Categories].
extension CategoriesPatterns on Categories {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Categories value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Categories() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Categories value)  $default,){
final _that = this;
switch (_that) {
case _Categories():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Categories value)?  $default,){
final _that = this;
switch (_that) {
case _Categories() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "collectionId")  String? collectionId, @JsonKey(name: "collectionName")  String? collectionName, @JsonKey(name: "id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "description")  String? description, @JsonKey(name: "assignedTo")  String? assignedTo, @JsonKey(name: "teamMembers")  List<String>? teamMembers, @JsonKey(name: "prefix")  String? prefix, @JsonKey(name: "code")  String? code, @JsonKey(name: "created")  DateTime? created, @JsonKey(name: "updated")  DateTime? updated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Categories() when $default != null:
return $default(_that.collectionId,_that.collectionName,_that.id,_that.name,_that.description,_that.assignedTo,_that.teamMembers,_that.prefix,_that.code,_that.created,_that.updated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "collectionId")  String? collectionId, @JsonKey(name: "collectionName")  String? collectionName, @JsonKey(name: "id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "description")  String? description, @JsonKey(name: "assignedTo")  String? assignedTo, @JsonKey(name: "teamMembers")  List<String>? teamMembers, @JsonKey(name: "prefix")  String? prefix, @JsonKey(name: "code")  String? code, @JsonKey(name: "created")  DateTime? created, @JsonKey(name: "updated")  DateTime? updated)  $default,) {final _that = this;
switch (_that) {
case _Categories():
return $default(_that.collectionId,_that.collectionName,_that.id,_that.name,_that.description,_that.assignedTo,_that.teamMembers,_that.prefix,_that.code,_that.created,_that.updated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "collectionId")  String? collectionId, @JsonKey(name: "collectionName")  String? collectionName, @JsonKey(name: "id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "description")  String? description, @JsonKey(name: "assignedTo")  String? assignedTo, @JsonKey(name: "teamMembers")  List<String>? teamMembers, @JsonKey(name: "prefix")  String? prefix, @JsonKey(name: "code")  String? code, @JsonKey(name: "created")  DateTime? created, @JsonKey(name: "updated")  DateTime? updated)?  $default,) {final _that = this;
switch (_that) {
case _Categories() when $default != null:
return $default(_that.collectionId,_that.collectionName,_that.id,_that.name,_that.description,_that.assignedTo,_that.teamMembers,_that.prefix,_that.code,_that.created,_that.updated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Categories implements Categories {
  const _Categories({@JsonKey(name: "collectionId") this.collectionId, @JsonKey(name: "collectionName") this.collectionName, @JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "description") this.description, @JsonKey(name: "assignedTo") this.assignedTo, @JsonKey(name: "teamMembers") final  List<String>? teamMembers, @JsonKey(name: "prefix") this.prefix, @JsonKey(name: "code") this.code, @JsonKey(name: "created") this.created, @JsonKey(name: "updated") this.updated}): _teamMembers = teamMembers;
  factory _Categories.fromJson(Map<String, dynamic> json) => _$CategoriesFromJson(json);

@override@JsonKey(name: "collectionId") final  String? collectionId;
@override@JsonKey(name: "collectionName") final  String? collectionName;
@override@JsonKey(name: "id") final  String? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "description") final  String? description;
@override@JsonKey(name: "assignedTo") final  String? assignedTo;
 final  List<String>? _teamMembers;
@override@JsonKey(name: "teamMembers") List<String>? get teamMembers {
  final value = _teamMembers;
  if (value == null) return null;
  if (_teamMembers is EqualUnmodifiableListView) return _teamMembers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "prefix") final  String? prefix;
@override@JsonKey(name: "code") final  String? code;
@override@JsonKey(name: "created") final  DateTime? created;
@override@JsonKey(name: "updated") final  DateTime? updated;

/// Create a copy of Categories
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoriesCopyWith<_Categories> get copyWith => __$CategoriesCopyWithImpl<_Categories>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Categories&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&const DeepCollectionEquality().equals(other._teamMembers, _teamMembers)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.code, code) || other.code == code)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,id,name,description,assignedTo,const DeepCollectionEquality().hash(_teamMembers),prefix,code,created,updated);

@override
String toString() {
  return 'Categories(collectionId: $collectionId, collectionName: $collectionName, id: $id, name: $name, description: $description, assignedTo: $assignedTo, teamMembers: $teamMembers, prefix: $prefix, code: $code, created: $created, updated: $updated)';
}


}

/// @nodoc
abstract mixin class _$CategoriesCopyWith<$Res> implements $CategoriesCopyWith<$Res> {
  factory _$CategoriesCopyWith(_Categories value, $Res Function(_Categories) _then) = __$CategoriesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "collectionId") String? collectionId,@JsonKey(name: "collectionName") String? collectionName,@JsonKey(name: "id") String? id,@JsonKey(name: "name") String? name,@JsonKey(name: "description") String? description,@JsonKey(name: "assignedTo") String? assignedTo,@JsonKey(name: "teamMembers") List<String>? teamMembers,@JsonKey(name: "prefix") String? prefix,@JsonKey(name: "code") String? code,@JsonKey(name: "created") DateTime? created,@JsonKey(name: "updated") DateTime? updated
});




}
/// @nodoc
class __$CategoriesCopyWithImpl<$Res>
    implements _$CategoriesCopyWith<$Res> {
  __$CategoriesCopyWithImpl(this._self, this._then);

  final _Categories _self;
  final $Res Function(_Categories) _then;

/// Create a copy of Categories
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collectionId = freezed,Object? collectionName = freezed,Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? assignedTo = freezed,Object? teamMembers = freezed,Object? prefix = freezed,Object? code = freezed,Object? created = freezed,Object? updated = freezed,}) {
  return _then(_Categories(
collectionId: freezed == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String?,collectionName: freezed == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,teamMembers: freezed == teamMembers ? _self._teamMembers : teamMembers // ignore: cast_nullable_to_non_nullable
as List<String>?,prefix: freezed == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime?,updated: freezed == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$ComplaintsCount {

 int get count;
/// Create a copy of ComplaintsCount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintsCountCopyWith<ComplaintsCount> get copyWith => _$ComplaintsCountCopyWithImpl<ComplaintsCount>(this as ComplaintsCount, _$identity);

  /// Serializes this ComplaintsCount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintsCount&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'ComplaintsCount(count: $count)';
}


}

/// @nodoc
abstract mixin class $ComplaintsCountCopyWith<$Res>  {
  factory $ComplaintsCountCopyWith(ComplaintsCount value, $Res Function(ComplaintsCount) _then) = _$ComplaintsCountCopyWithImpl;
@useResult
$Res call({
 int count
});




}
/// @nodoc
class _$ComplaintsCountCopyWithImpl<$Res>
    implements $ComplaintsCountCopyWith<$Res> {
  _$ComplaintsCountCopyWithImpl(this._self, this._then);

  final ComplaintsCount _self;
  final $Res Function(ComplaintsCount) _then;

/// Create a copy of ComplaintsCount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintsCount].
extension ComplaintsCountPatterns on ComplaintsCount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintsCount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintsCount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintsCount value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintsCount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintsCount value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintsCount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintsCount() when $default != null:
return $default(_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count)  $default,) {final _that = this;
switch (_that) {
case _ComplaintsCount():
return $default(_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintsCount() when $default != null:
return $default(_that.count);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ComplaintsCount implements ComplaintsCount {
  const _ComplaintsCount({required this.count});
  factory _ComplaintsCount.fromJson(Map<String, dynamic> json) => _$ComplaintsCountFromJson(json);

@override final  int count;

/// Create a copy of ComplaintsCount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintsCountCopyWith<_ComplaintsCount> get copyWith => __$ComplaintsCountCopyWithImpl<_ComplaintsCount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintsCountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintsCount&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'ComplaintsCount(count: $count)';
}


}

/// @nodoc
abstract mixin class _$ComplaintsCountCopyWith<$Res> implements $ComplaintsCountCopyWith<$Res> {
  factory _$ComplaintsCountCopyWith(_ComplaintsCount value, $Res Function(_ComplaintsCount) _then) = __$ComplaintsCountCopyWithImpl;
@override @useResult
$Res call({
 int count
});




}
/// @nodoc
class __$ComplaintsCountCopyWithImpl<$Res>
    implements _$ComplaintsCountCopyWith<$Res> {
  __$ComplaintsCountCopyWithImpl(this._self, this._then);

  final _ComplaintsCount _self;
  final $Res Function(_ComplaintsCount) _then;

/// Create a copy of ComplaintsCount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(_ComplaintsCount(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Complaints {

@JsonKey(name: "collectionId") String get collectionId;@JsonKey(name: "collectionName") String get collectionName;@JsonKey(name: "id") String get id;@JsonKey(name: "title") String get title;@JsonKey(name: "description") String get description;@JsonKey(name: "images") List<String>? get images;@JsonKey(name: "complaintBy") String? get complaintBy;@JsonKey(name: "complaintSubCateogryId") String? get complaintSubCateogryId;@JsonKey(name: "complaintCategoryId") String? get complaintCategoryId;@JsonKey(name: "progress", defaultValue: 0.0) double get progress;@JsonKey(name: "status") String? get status;@JsonKey(name: "created") DateTime get created;@JsonKey(name: "updated") DateTime get updated;
/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintsCopyWith<Complaints> get copyWith => _$ComplaintsCopyWithImpl<Complaints>(this as Complaints, _$identity);

  /// Serializes this Complaints to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Complaints&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.complaintBy, complaintBy) || other.complaintBy == complaintBy)&&(identical(other.complaintSubCateogryId, complaintSubCateogryId) || other.complaintSubCateogryId == complaintSubCateogryId)&&(identical(other.complaintCategoryId, complaintCategoryId) || other.complaintCategoryId == complaintCategoryId)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.status, status) || other.status == status)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,id,title,description,const DeepCollectionEquality().hash(images),complaintBy,complaintSubCateogryId,complaintCategoryId,progress,status,created,updated);

@override
String toString() {
  return 'Complaints(collectionId: $collectionId, collectionName: $collectionName, id: $id, title: $title, description: $description, images: $images, complaintBy: $complaintBy, complaintSubCateogryId: $complaintSubCateogryId, complaintCategoryId: $complaintCategoryId, progress: $progress, status: $status, created: $created, updated: $updated)';
}


}

/// @nodoc
abstract mixin class $ComplaintsCopyWith<$Res>  {
  factory $ComplaintsCopyWith(Complaints value, $Res Function(Complaints) _then) = _$ComplaintsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "collectionId") String collectionId,@JsonKey(name: "collectionName") String collectionName,@JsonKey(name: "id") String id,@JsonKey(name: "title") String title,@JsonKey(name: "description") String description,@JsonKey(name: "images") List<String>? images,@JsonKey(name: "complaintBy") String? complaintBy,@JsonKey(name: "complaintSubCateogryId") String? complaintSubCateogryId,@JsonKey(name: "complaintCategoryId") String? complaintCategoryId,@JsonKey(name: "progress", defaultValue: 0.0) double progress,@JsonKey(name: "status") String? status,@JsonKey(name: "created") DateTime created,@JsonKey(name: "updated") DateTime updated
});




}
/// @nodoc
class _$ComplaintsCopyWithImpl<$Res>
    implements $ComplaintsCopyWith<$Res> {
  _$ComplaintsCopyWithImpl(this._self, this._then);

  final Complaints _self;
  final $Res Function(Complaints) _then;

/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collectionId = null,Object? collectionName = null,Object? id = null,Object? title = null,Object? description = null,Object? images = freezed,Object? complaintBy = freezed,Object? complaintSubCateogryId = freezed,Object? complaintCategoryId = freezed,Object? progress = null,Object? status = freezed,Object? created = null,Object? updated = null,}) {
  return _then(_self.copyWith(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,complaintBy: freezed == complaintBy ? _self.complaintBy : complaintBy // ignore: cast_nullable_to_non_nullable
as String?,complaintSubCateogryId: freezed == complaintSubCateogryId ? _self.complaintSubCateogryId : complaintSubCateogryId // ignore: cast_nullable_to_non_nullable
as String?,complaintCategoryId: freezed == complaintCategoryId ? _self.complaintCategoryId : complaintCategoryId // ignore: cast_nullable_to_non_nullable
as String?,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Complaints].
extension ComplaintsPatterns on Complaints {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Complaints value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Complaints() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Complaints value)  $default,){
final _that = this;
switch (_that) {
case _Complaints():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Complaints value)?  $default,){
final _that = this;
switch (_that) {
case _Complaints() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "collectionId")  String collectionId, @JsonKey(name: "collectionName")  String collectionName, @JsonKey(name: "id")  String id, @JsonKey(name: "title")  String title, @JsonKey(name: "description")  String description, @JsonKey(name: "images")  List<String>? images, @JsonKey(name: "complaintBy")  String? complaintBy, @JsonKey(name: "complaintSubCateogryId")  String? complaintSubCateogryId, @JsonKey(name: "complaintCategoryId")  String? complaintCategoryId, @JsonKey(name: "progress", defaultValue: 0.0)  double progress, @JsonKey(name: "status")  String? status, @JsonKey(name: "created")  DateTime created, @JsonKey(name: "updated")  DateTime updated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Complaints() when $default != null:
return $default(_that.collectionId,_that.collectionName,_that.id,_that.title,_that.description,_that.images,_that.complaintBy,_that.complaintSubCateogryId,_that.complaintCategoryId,_that.progress,_that.status,_that.created,_that.updated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "collectionId")  String collectionId, @JsonKey(name: "collectionName")  String collectionName, @JsonKey(name: "id")  String id, @JsonKey(name: "title")  String title, @JsonKey(name: "description")  String description, @JsonKey(name: "images")  List<String>? images, @JsonKey(name: "complaintBy")  String? complaintBy, @JsonKey(name: "complaintSubCateogryId")  String? complaintSubCateogryId, @JsonKey(name: "complaintCategoryId")  String? complaintCategoryId, @JsonKey(name: "progress", defaultValue: 0.0)  double progress, @JsonKey(name: "status")  String? status, @JsonKey(name: "created")  DateTime created, @JsonKey(name: "updated")  DateTime updated)  $default,) {final _that = this;
switch (_that) {
case _Complaints():
return $default(_that.collectionId,_that.collectionName,_that.id,_that.title,_that.description,_that.images,_that.complaintBy,_that.complaintSubCateogryId,_that.complaintCategoryId,_that.progress,_that.status,_that.created,_that.updated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "collectionId")  String collectionId, @JsonKey(name: "collectionName")  String collectionName, @JsonKey(name: "id")  String id, @JsonKey(name: "title")  String title, @JsonKey(name: "description")  String description, @JsonKey(name: "images")  List<String>? images, @JsonKey(name: "complaintBy")  String? complaintBy, @JsonKey(name: "complaintSubCateogryId")  String? complaintSubCateogryId, @JsonKey(name: "complaintCategoryId")  String? complaintCategoryId, @JsonKey(name: "progress", defaultValue: 0.0)  double progress, @JsonKey(name: "status")  String? status, @JsonKey(name: "created")  DateTime created, @JsonKey(name: "updated")  DateTime updated)?  $default,) {final _that = this;
switch (_that) {
case _Complaints() when $default != null:
return $default(_that.collectionId,_that.collectionName,_that.id,_that.title,_that.description,_that.images,_that.complaintBy,_that.complaintSubCateogryId,_that.complaintCategoryId,_that.progress,_that.status,_that.created,_that.updated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Complaints implements Complaints {
  const _Complaints({@JsonKey(name: "collectionId") required this.collectionId, @JsonKey(name: "collectionName") required this.collectionName, @JsonKey(name: "id") required this.id, @JsonKey(name: "title") required this.title, @JsonKey(name: "description") required this.description, @JsonKey(name: "images") final  List<String>? images, @JsonKey(name: "complaintBy") this.complaintBy, @JsonKey(name: "complaintSubCateogryId") this.complaintSubCateogryId, @JsonKey(name: "complaintCategoryId") this.complaintCategoryId, @JsonKey(name: "progress", defaultValue: 0.0) required this.progress, @JsonKey(name: "status") this.status, @JsonKey(name: "created") required this.created, @JsonKey(name: "updated") required this.updated}): _images = images;
  factory _Complaints.fromJson(Map<String, dynamic> json) => _$ComplaintsFromJson(json);

@override@JsonKey(name: "collectionId") final  String collectionId;
@override@JsonKey(name: "collectionName") final  String collectionName;
@override@JsonKey(name: "id") final  String id;
@override@JsonKey(name: "title") final  String title;
@override@JsonKey(name: "description") final  String description;
 final  List<String>? _images;
@override@JsonKey(name: "images") List<String>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "complaintBy") final  String? complaintBy;
@override@JsonKey(name: "complaintSubCateogryId") final  String? complaintSubCateogryId;
@override@JsonKey(name: "complaintCategoryId") final  String? complaintCategoryId;
@override@JsonKey(name: "progress", defaultValue: 0.0) final  double progress;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "created") final  DateTime created;
@override@JsonKey(name: "updated") final  DateTime updated;

/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintsCopyWith<_Complaints> get copyWith => __$ComplaintsCopyWithImpl<_Complaints>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Complaints&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.complaintBy, complaintBy) || other.complaintBy == complaintBy)&&(identical(other.complaintSubCateogryId, complaintSubCateogryId) || other.complaintSubCateogryId == complaintSubCateogryId)&&(identical(other.complaintCategoryId, complaintCategoryId) || other.complaintCategoryId == complaintCategoryId)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.status, status) || other.status == status)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,id,title,description,const DeepCollectionEquality().hash(_images),complaintBy,complaintSubCateogryId,complaintCategoryId,progress,status,created,updated);

@override
String toString() {
  return 'Complaints(collectionId: $collectionId, collectionName: $collectionName, id: $id, title: $title, description: $description, images: $images, complaintBy: $complaintBy, complaintSubCateogryId: $complaintSubCateogryId, complaintCategoryId: $complaintCategoryId, progress: $progress, status: $status, created: $created, updated: $updated)';
}


}

/// @nodoc
abstract mixin class _$ComplaintsCopyWith<$Res> implements $ComplaintsCopyWith<$Res> {
  factory _$ComplaintsCopyWith(_Complaints value, $Res Function(_Complaints) _then) = __$ComplaintsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "collectionId") String collectionId,@JsonKey(name: "collectionName") String collectionName,@JsonKey(name: "id") String id,@JsonKey(name: "title") String title,@JsonKey(name: "description") String description,@JsonKey(name: "images") List<String>? images,@JsonKey(name: "complaintBy") String? complaintBy,@JsonKey(name: "complaintSubCateogryId") String? complaintSubCateogryId,@JsonKey(name: "complaintCategoryId") String? complaintCategoryId,@JsonKey(name: "progress", defaultValue: 0.0) double progress,@JsonKey(name: "status") String? status,@JsonKey(name: "created") DateTime created,@JsonKey(name: "updated") DateTime updated
});




}
/// @nodoc
class __$ComplaintsCopyWithImpl<$Res>
    implements _$ComplaintsCopyWith<$Res> {
  __$ComplaintsCopyWithImpl(this._self, this._then);

  final _Complaints _self;
  final $Res Function(_Complaints) _then;

/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collectionId = null,Object? collectionName = null,Object? id = null,Object? title = null,Object? description = null,Object? images = freezed,Object? complaintBy = freezed,Object? complaintSubCateogryId = freezed,Object? complaintCategoryId = freezed,Object? progress = null,Object? status = freezed,Object? created = null,Object? updated = null,}) {
  return _then(_Complaints(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,complaintBy: freezed == complaintBy ? _self.complaintBy : complaintBy // ignore: cast_nullable_to_non_nullable
as String?,complaintSubCateogryId: freezed == complaintSubCateogryId ? _self.complaintSubCateogryId : complaintSubCateogryId // ignore: cast_nullable_to_non_nullable
as String?,complaintCategoryId: freezed == complaintCategoryId ? _self.complaintCategoryId : complaintCategoryId // ignore: cast_nullable_to_non_nullable
as String?,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$ComplaintsRequest {

 String get title; String get description; String? get complaintBy;@JsonKey(defaultValue: []) List<String>? get images;@JsonKey(defaultValue: "pending") String? get status; String? get complaintCategoryId; String? get complaintSubCategoryId;
/// Create a copy of ComplaintsRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintsRequestCopyWith<ComplaintsRequest> get copyWith => _$ComplaintsRequestCopyWithImpl<ComplaintsRequest>(this as ComplaintsRequest, _$identity);

  /// Serializes this ComplaintsRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintsRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.complaintBy, complaintBy) || other.complaintBy == complaintBy)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.status, status) || other.status == status)&&(identical(other.complaintCategoryId, complaintCategoryId) || other.complaintCategoryId == complaintCategoryId)&&(identical(other.complaintSubCategoryId, complaintSubCategoryId) || other.complaintSubCategoryId == complaintSubCategoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,complaintBy,const DeepCollectionEquality().hash(images),status,complaintCategoryId,complaintSubCategoryId);

@override
String toString() {
  return 'ComplaintsRequest(title: $title, description: $description, complaintBy: $complaintBy, images: $images, status: $status, complaintCategoryId: $complaintCategoryId, complaintSubCategoryId: $complaintSubCategoryId)';
}


}

/// @nodoc
abstract mixin class $ComplaintsRequestCopyWith<$Res>  {
  factory $ComplaintsRequestCopyWith(ComplaintsRequest value, $Res Function(ComplaintsRequest) _then) = _$ComplaintsRequestCopyWithImpl;
@useResult
$Res call({
 String title, String description, String? complaintBy,@JsonKey(defaultValue: []) List<String>? images,@JsonKey(defaultValue: "pending") String? status, String? complaintCategoryId, String? complaintSubCategoryId
});




}
/// @nodoc
class _$ComplaintsRequestCopyWithImpl<$Res>
    implements $ComplaintsRequestCopyWith<$Res> {
  _$ComplaintsRequestCopyWithImpl(this._self, this._then);

  final ComplaintsRequest _self;
  final $Res Function(ComplaintsRequest) _then;

/// Create a copy of ComplaintsRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? complaintBy = freezed,Object? images = freezed,Object? status = freezed,Object? complaintCategoryId = freezed,Object? complaintSubCategoryId = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,complaintBy: freezed == complaintBy ? _self.complaintBy : complaintBy // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,complaintCategoryId: freezed == complaintCategoryId ? _self.complaintCategoryId : complaintCategoryId // ignore: cast_nullable_to_non_nullable
as String?,complaintSubCategoryId: freezed == complaintSubCategoryId ? _self.complaintSubCategoryId : complaintSubCategoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintsRequest].
extension ComplaintsRequestPatterns on ComplaintsRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintsRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintsRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintsRequest value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintsRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintsRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintsRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  String? complaintBy, @JsonKey(defaultValue: [])  List<String>? images, @JsonKey(defaultValue: "pending")  String? status,  String? complaintCategoryId,  String? complaintSubCategoryId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintsRequest() when $default != null:
return $default(_that.title,_that.description,_that.complaintBy,_that.images,_that.status,_that.complaintCategoryId,_that.complaintSubCategoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  String? complaintBy, @JsonKey(defaultValue: [])  List<String>? images, @JsonKey(defaultValue: "pending")  String? status,  String? complaintCategoryId,  String? complaintSubCategoryId)  $default,) {final _that = this;
switch (_that) {
case _ComplaintsRequest():
return $default(_that.title,_that.description,_that.complaintBy,_that.images,_that.status,_that.complaintCategoryId,_that.complaintSubCategoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  String? complaintBy, @JsonKey(defaultValue: [])  List<String>? images, @JsonKey(defaultValue: "pending")  String? status,  String? complaintCategoryId,  String? complaintSubCategoryId)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintsRequest() when $default != null:
return $default(_that.title,_that.description,_that.complaintBy,_that.images,_that.status,_that.complaintCategoryId,_that.complaintSubCategoryId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ComplaintsRequest implements ComplaintsRequest {
  const _ComplaintsRequest({required this.title, required this.description, required this.complaintBy, @JsonKey(defaultValue: []) final  List<String>? images, @JsonKey(defaultValue: "pending") this.status, this.complaintCategoryId, this.complaintSubCategoryId}): _images = images;
  factory _ComplaintsRequest.fromJson(Map<String, dynamic> json) => _$ComplaintsRequestFromJson(json);

@override final  String title;
@override final  String description;
@override final  String? complaintBy;
 final  List<String>? _images;
@override@JsonKey(defaultValue: []) List<String>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(defaultValue: "pending") final  String? status;
@override final  String? complaintCategoryId;
@override final  String? complaintSubCategoryId;

/// Create a copy of ComplaintsRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintsRequestCopyWith<_ComplaintsRequest> get copyWith => __$ComplaintsRequestCopyWithImpl<_ComplaintsRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintsRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintsRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.complaintBy, complaintBy) || other.complaintBy == complaintBy)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.status, status) || other.status == status)&&(identical(other.complaintCategoryId, complaintCategoryId) || other.complaintCategoryId == complaintCategoryId)&&(identical(other.complaintSubCategoryId, complaintSubCategoryId) || other.complaintSubCategoryId == complaintSubCategoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,complaintBy,const DeepCollectionEquality().hash(_images),status,complaintCategoryId,complaintSubCategoryId);

@override
String toString() {
  return 'ComplaintsRequest(title: $title, description: $description, complaintBy: $complaintBy, images: $images, status: $status, complaintCategoryId: $complaintCategoryId, complaintSubCategoryId: $complaintSubCategoryId)';
}


}

/// @nodoc
abstract mixin class _$ComplaintsRequestCopyWith<$Res> implements $ComplaintsRequestCopyWith<$Res> {
  factory _$ComplaintsRequestCopyWith(_ComplaintsRequest value, $Res Function(_ComplaintsRequest) _then) = __$ComplaintsRequestCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, String? complaintBy,@JsonKey(defaultValue: []) List<String>? images,@JsonKey(defaultValue: "pending") String? status, String? complaintCategoryId, String? complaintSubCategoryId
});




}
/// @nodoc
class __$ComplaintsRequestCopyWithImpl<$Res>
    implements _$ComplaintsRequestCopyWith<$Res> {
  __$ComplaintsRequestCopyWithImpl(this._self, this._then);

  final _ComplaintsRequest _self;
  final $Res Function(_ComplaintsRequest) _then;

/// Create a copy of ComplaintsRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? complaintBy = freezed,Object? images = freezed,Object? status = freezed,Object? complaintCategoryId = freezed,Object? complaintSubCategoryId = freezed,}) {
  return _then(_ComplaintsRequest(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,complaintBy: freezed == complaintBy ? _self.complaintBy : complaintBy // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,complaintCategoryId: freezed == complaintCategoryId ? _self.complaintCategoryId : complaintCategoryId // ignore: cast_nullable_to_non_nullable
as String?,complaintSubCategoryId: freezed == complaintSubCategoryId ? _self.complaintSubCategoryId : complaintSubCategoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ComplaintCommentRequest {

 String get message; String get commentBy; String? get parentId; String get complaintId;
/// Create a copy of ComplaintCommentRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintCommentRequestCopyWith<ComplaintCommentRequest> get copyWith => _$ComplaintCommentRequestCopyWithImpl<ComplaintCommentRequest>(this as ComplaintCommentRequest, _$identity);

  /// Serializes this ComplaintCommentRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintCommentRequest&&(identical(other.message, message) || other.message == message)&&(identical(other.commentBy, commentBy) || other.commentBy == commentBy)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.complaintId, complaintId) || other.complaintId == complaintId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,commentBy,parentId,complaintId);

@override
String toString() {
  return 'ComplaintCommentRequest(message: $message, commentBy: $commentBy, parentId: $parentId, complaintId: $complaintId)';
}


}

/// @nodoc
abstract mixin class $ComplaintCommentRequestCopyWith<$Res>  {
  factory $ComplaintCommentRequestCopyWith(ComplaintCommentRequest value, $Res Function(ComplaintCommentRequest) _then) = _$ComplaintCommentRequestCopyWithImpl;
@useResult
$Res call({
 String message, String commentBy, String? parentId, String complaintId
});




}
/// @nodoc
class _$ComplaintCommentRequestCopyWithImpl<$Res>
    implements $ComplaintCommentRequestCopyWith<$Res> {
  _$ComplaintCommentRequestCopyWithImpl(this._self, this._then);

  final ComplaintCommentRequest _self;
  final $Res Function(ComplaintCommentRequest) _then;

/// Create a copy of ComplaintCommentRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? commentBy = null,Object? parentId = freezed,Object? complaintId = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,commentBy: null == commentBy ? _self.commentBy : commentBy // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,complaintId: null == complaintId ? _self.complaintId : complaintId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintCommentRequest].
extension ComplaintCommentRequestPatterns on ComplaintCommentRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintCommentRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintCommentRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintCommentRequest value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintCommentRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintCommentRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintCommentRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  String commentBy,  String? parentId,  String complaintId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintCommentRequest() when $default != null:
return $default(_that.message,_that.commentBy,_that.parentId,_that.complaintId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  String commentBy,  String? parentId,  String complaintId)  $default,) {final _that = this;
switch (_that) {
case _ComplaintCommentRequest():
return $default(_that.message,_that.commentBy,_that.parentId,_that.complaintId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  String commentBy,  String? parentId,  String complaintId)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintCommentRequest() when $default != null:
return $default(_that.message,_that.commentBy,_that.parentId,_that.complaintId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComplaintCommentRequest implements ComplaintCommentRequest {
  const _ComplaintCommentRequest({required this.message, required this.commentBy, this.parentId, required this.complaintId});
  factory _ComplaintCommentRequest.fromJson(Map<String, dynamic> json) => _$ComplaintCommentRequestFromJson(json);

@override final  String message;
@override final  String commentBy;
@override final  String? parentId;
@override final  String complaintId;

/// Create a copy of ComplaintCommentRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintCommentRequestCopyWith<_ComplaintCommentRequest> get copyWith => __$ComplaintCommentRequestCopyWithImpl<_ComplaintCommentRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintCommentRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintCommentRequest&&(identical(other.message, message) || other.message == message)&&(identical(other.commentBy, commentBy) || other.commentBy == commentBy)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.complaintId, complaintId) || other.complaintId == complaintId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,commentBy,parentId,complaintId);

@override
String toString() {
  return 'ComplaintCommentRequest(message: $message, commentBy: $commentBy, parentId: $parentId, complaintId: $complaintId)';
}


}

/// @nodoc
abstract mixin class _$ComplaintCommentRequestCopyWith<$Res> implements $ComplaintCommentRequestCopyWith<$Res> {
  factory _$ComplaintCommentRequestCopyWith(_ComplaintCommentRequest value, $Res Function(_ComplaintCommentRequest) _then) = __$ComplaintCommentRequestCopyWithImpl;
@override @useResult
$Res call({
 String message, String commentBy, String? parentId, String complaintId
});




}
/// @nodoc
class __$ComplaintCommentRequestCopyWithImpl<$Res>
    implements _$ComplaintCommentRequestCopyWith<$Res> {
  __$ComplaintCommentRequestCopyWithImpl(this._self, this._then);

  final _ComplaintCommentRequest _self;
  final $Res Function(_ComplaintCommentRequest) _then;

/// Create a copy of ComplaintCommentRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? commentBy = null,Object? parentId = freezed,Object? complaintId = null,}) {
  return _then(_ComplaintCommentRequest(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,commentBy: null == commentBy ? _self.commentBy : commentBy // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,complaintId: null == complaintId ? _self.complaintId : complaintId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
