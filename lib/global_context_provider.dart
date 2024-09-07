import 'package:awaj/components/base_url.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GlobalProvider with ChangeNotifier {
  List<dynamic> _glist = [];
  List<Map<String, dynamic>> _areaList = [];

  List<dynamic> get glist => _glist;
  List<Map<String, dynamic>> get areaList => _areaList;

  Future<void> getAreas() async {
    final response = await http.get(Uri.parse(BaseUrl.baseUrl+'/getAreas'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      _areaList = data.map((type) {
        return {'label': type['type'], 'value': type['type']};
      }).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load areas');
    }
  }

  Future<void> getAllPublicComplaints() async {
    final userId = '1'; // Replace with logic to fetch the userId
    final response = await http.get(Uri.parse(BaseUrl.baseUrl+'/getOwnComplaints/$userId'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      _glist = data;
      notifyListeners();
    } else {
      throw Exception('Failed to load complaints');
    }
  }

  void updategList(List<dynamic> value) {
    _glist = value;
    notifyListeners();
  }
}
