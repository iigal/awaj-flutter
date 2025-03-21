import 'package:freezed_annotation/freezed_annotation.dart';

part 'complaint_table_state.freezed.dart';
part 'complaint_table_state.g.dart';

@freezed
class ComplaintTableState with _$ComplaintTableState {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ComplaintTableState({
    @Default("") final String searchTerm,
    @Default([]) List<String> statusFilters,
  }) = _ComplaintTableState;
  factory ComplaintTableState.fromJson(Map<String, dynamic> json) => _$ComplaintTableStateFromJson(json);
}
