import 'dart:convert';

import 'package:awaj/components/base_url.dart';
import 'package:awaj/data/response.dart';
import 'package:awaj/features/auth/providers/auth_provider.dart';
import 'package:awaj/features/complaints/models/complaints_categories_model.dart';
import 'package:awaj/features/complaints/models/complaints_comment.dart';
import 'package:awaj/features/complaints/presentation/state/complaint_table_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final complaintsRepositoryProvider = Provider<ComplaintsRepository>((ref) {
  String token = ref.watch(authProviderProvider.notifier).getToken();
  return ComplaintsRepository(token);
});

class ComplaintsRepository {
  final String _token;

  ComplaintsRepository(this._token);

  Future<ComplaintsCount> getAllComplaintsCount() async {
    http.Response response = await http.get(Uri.parse("${BaseUrl.baseUrl}/issues/count"), headers: {"Authorization": "$_token"});
    var jsonResponse = json.decode(response.body);
    ApiResponse responseJson = ApiResponse.fromJson(jsonResponse);
    return ComplaintsCount.fromJson(responseJson.data[0]);
  }

  Future<List<Complaints>> getAllComplaints(ComplaintTableState filter) async {
    http.Response response =
        await http.get(Uri.parse("${BaseUrl.baseUrl}/issues?search_text=${filter.searchTerm}"), headers: {"Authorization": "$_token"});
    var jsonResponse = json.decode(response.body);
    ApiResponse responseJson = ApiResponse.fromJson(jsonResponse);
    List<Complaints> issues = [];
    for (int i = 0; i < responseJson.data.length; i++) {
      issues.add(Complaints.fromJson(responseJson.data[i]));
    }
    return issues;
  }

  Future<void> registerComplaint(ComplaintsRequest complaint) async {
    await http.post(
      Uri.parse("${BaseUrl.baseUrl}/issues"),
      body: json.encode(complaint.toJson()),
      headers: {"content-type": "application/json"},
    );
  }

  Future<void> registerComplaintWithImages(ComplaintsRequest complaint) async {
    await http.post(
      Uri.parse("${BaseUrl.baseUrl}/issues/image"),
      body: json.encode(complaint.toJson()),
      headers: {"content-type": "application/json"},
    );
  }

  Future<List<ComplaintsComment>> getComplaintComments(int id) async {
    http.Response response = await http.post(
      Uri.parse("${BaseUrl.baseUrl}/issues/comments"),
      body: json.encode({"issue_id": id}),
      headers: {"content-type": "application/json"},
    );
    var jsonResponse = json.decode(response.body);
    ApiResponse responseJson = ApiResponse.fromJson(jsonResponse);
    List<ComplaintsComment> comments = [];
    for (int i = 0; i < responseJson.data.length; i++) {
      comments.add(ComplaintsComment.fromJson(responseJson.data[i]));
    }
    return comments;
  }

  Future<void> registerComplaintComments(ComplaintCommentRequest request) async {
    await http.post(
      Uri.parse("${BaseUrl.baseUrl}/issues/comments/create"),
      body: json.encode(request.toJson()),
      headers: {"content-type": "application/json"},
    );
  }
}
