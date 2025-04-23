import 'package:awaj/features/main/complaints/presentation/state/complaint_table_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'complaint_table_provider.g.dart';

@riverpod
class ComplaintTableFilterState extends _$ComplaintTableFilterState {
  @override
  ComplaintTableState build() {
    return ComplaintTableState();
  }

  set setSearchTerm(String searchTerm) {
    state = state.copyWith(searchTerm: searchTerm);
  }

  set setStatus(String value) {
    state = state.copyWith(statusFilters: [...state.statusFilters, value]);
  }

  set unsetStatus(String value) {
    if (state.statusFilters.isNotEmpty) state.statusFilters.remove(value);
    state = state.copyWith(statusFilters: [...state.statusFilters]);
  }

  bool hasStatus(String value) {
    if (state.statusFilters.contains(value)) {
      return true;
    }
    return false;
  }
}
