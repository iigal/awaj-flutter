import 'package:awaj/features/main/complaints/models/complaints_categories_model.dart';
import 'package:awaj/features/main/complaints/models/complaints_comment.dart';
import 'package:awaj/features/main/complaints/presentation/state/complaint_table_state.dart';

abstract class ComplaintsRepositoryInterface {
  Future<ComplaintsCount> getAllComplaintsCount();
  Future<List<Complaints>> getAllComplaints(ComplaintTableState filter);
  Future<void> registerComplaint(ComplaintsRequest complaint);
  Future<void> registerComplaintWithImages(ComplaintsRequest complaint);
  Future<List<ComplaintsComment>> getComplaintComments(int id);
  Future<void> registerComplaintComments(ComplaintCommentRequest request);
}
