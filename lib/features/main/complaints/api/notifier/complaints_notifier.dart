import 'package:awaj/features/main/complaints/api/complaints_repository.dart';
import 'package:awaj/features/main/complaints/models/complaints_categories_model.dart';
import 'package:awaj/features/main/complaints/models/complaints_comment.dart';
import 'package:awaj/features/main/complaints/presentation/state/complaint_table_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'complaints_notifier.g.dart';

@riverpod
class ComplaintsNotifier extends _$ComplaintsNotifier {
  @override
  FutureOr<List<Complaints>> build({required ComplaintTableState filter}) {
    var data = ref.watch(complaintsRepositoryProvider).getAllComplaints(filter);
    return data;
  }
}

@riverpod
class ComplaintsCountNotifier extends _$ComplaintsCountNotifier {
  @override
  FutureOr<ComplaintsCount> build() {
    var data = ref.watch(complaintsRepositoryProvider).getAllComplaintsCount();
    return data;
  }
}

@riverpod
class ComplaintsCommentNotifier extends _$ComplaintsCommentNotifier {
  @override
  FutureOr<List<ComplaintsComment>> build(String id) {
    var data = ref.watch(complaintsRepositoryProvider).getComplaintComments(id);
    return data;
  }
}
