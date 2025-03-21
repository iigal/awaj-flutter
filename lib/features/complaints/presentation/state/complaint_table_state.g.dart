// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaint_table_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComplaintTableStateImpl _$$ComplaintTableStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ComplaintTableStateImpl(
      searchTerm: json['search_term'] as String? ?? "",
      statusFilters: (json['status_filters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ComplaintTableStateImplToJson(
        _$ComplaintTableStateImpl instance) =>
    <String, dynamic>{
      'search_term': instance.searchTerm,
      'status_filters': instance.statusFilters,
    };
