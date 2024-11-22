import 'package:awaj/features/complaints/api/complaints_repository.dart';
import 'package:awaj/features/complaints/models/complaints_categories_model.dart';
import 'package:awaj/features/complaints/models/complaints_comment.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'complaints_notifier.g.dart';

@riverpod
class ComplaintsNotifier extends _$ComplaintsNotifier {
  @override
  FutureOr<List<Complaints>> build() {
    var data = ref.watch(complaintsRepositoryProvider).getAllComplaints();
    return data;
  }
}

@riverpod
class ComplaintsCommentNotifier extends _$ComplaintsCommentNotifier {
  @override
  FutureOr<List<ComplaintsComment>> build(int id) {
    var data = ref.watch(complaintsRepositoryProvider).getComplaintComments(id);
    return data;
  }
}
