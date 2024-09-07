import 'package:awaj/components/custom_modal_buttons.dart';
import 'package:awaj/components/custom_modal_delete.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // For jsonDecode
import 'package:shared_preferences/shared_preferences.dart';
import 'package:awaj/components/base_url.dart';
import 'package:awaj/components/custom_modal.dart';
import 'package:awaj/components/theme_color.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isCollapsed = true;
  bool _isSpinnerVisible = false;
  bool _isRefreshing = false;
  bool _modalVisible = false;
  bool _modalVisible2 = false;
  bool _modalVisible3 = false;
  String _dynamicModalText = '';
  String _dynamicModalText2 = '';
  String _modalText3 = '';
  String _userId = '';
  Map<String, dynamic>? _profileDetails;
  List<dynamic> _complaintsList = [];

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _userId = prefs.getString('userId') ?? '';
    await _getAllComplaints(_userId);
    await _getProfileDetails(_userId);
  }

  Future<void> _getProfileDetails(String id) async {
    final response = await http.get(Uri.parse('$BaseUrl/getProfile/$id'));
    if (response.statusCode == 200) {
      setState(() {
        _profileDetails = jsonDecode(response.body)[0];
      });
    } else {
      setState(() {
        _modalVisible = true;
        _dynamicModalText = 'Something went wrong. Please check your Internet Connection!';
      });
    }
  }

  Future<void> _getAllComplaints(String id) async {
    setState(() {
      _isRefreshing = true;
    });
    final response = await http.get(Uri.parse('$BaseUrl/getOwnComplaints/$id'));
    if (response.statusCode == 200) {
      setState(() {
        _complaintsList = jsonDecode(response.body);
        _isRefreshing = false;
      });
    } else {
      setState(() {
        _isRefreshing = false;
        _modalVisible = true;
        _dynamicModalText = 'Something went wrong. Please check your Internet Connection!';
      });
    }
  }

  Future<void> _logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    await prefs.remove('userId');
    Navigator.of(context).pushReplacementNamed('/homeScreen');
  }

  Future<void> _handleYes3() async {
    try {
      final response = await http.delete(Uri.parse('$BaseUrl/delete_account/$_userId'));
      if (response.statusCode == 200) {
        _logout();
      }
    } catch (err) {
      setState(() {
        _modalVisible = true;
        _dynamicModalText = 'Something went wrong. Please check your Internet Connection!';
      });
    }
  }

  Color _setColor(String status) {
    switch (status) {
      case 'Success':
        return Colors.green;
      case 'Progress':
        return Colors.orange;
      case 'Queue':
        return Colors.red;
      default:
        return Colors.red;
    }
  }

  Color _setTextColor(String status) {
    switch (status) {
      case 'Success':
        return Colors.white;
      case 'Progress':
        return Colors.black;
      case 'Queue':
        return Colors.white;
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: ThemeColor.backgroundLight,
      ),
      body: RefreshIndicator(
        onRefresh: () => _getAllComplaints(_userId),
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Visibility(
              visible: _isSpinnerVisible,
              child: const CircularProgressIndicator(),
            ),
            Visibility(
              visible: _profileDetails != null,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey[300],
                        child: const Icon(Icons.person, size: 30),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          _profileDetails?['fullname'] ?? '',
                          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _modalText3 = 'Are you sure you want to delete your account and all data?';
                            _modalVisible3 = true;
                          });
                        },
                        child: const Text('Remove Account', style: TextStyle(color: Colors.white)),
                        style: TextButton.styleFrom(backgroundColor: Colors.red),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text('Email: ${_profileDetails?['email'] ?? ''}'),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _dynamicModalText2 = 'Do you want to logout?';
                  _modalVisible2 = true;
                });
              },
              child: const Text('Logout'),
            ),
            const SizedBox(height: 20),
            const Text('Your Complaints', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ..._complaintsList.map((item) {
              return ListTile(
                title: Text(item['title']),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Date: ${item['Date'].substring(0, 15)}'),
                    Text('Category: ${item['category']}'),
                  ],
                ),
                trailing: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: _setColor(item['status']),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    item['status'],
                    style: TextStyle(color: _setTextColor(item['status'])),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/complaintDetails', arguments: {
                    'items': item,
                    'date': item['Date'].substring(0, 15),
                  });
                },
              );
            }).toList(),
          ],
        ),
      ),
      // Custom Modals
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomModal(visible: _modalVisible, modalText: _dynamicModalText, onClose: () => setState(() => _modalVisible = false)),
          CustomModalButtons(visible: _modalVisible2, modalText: _dynamicModalText2, onClickedNo: () => setState(() => _modalVisible2 = false), onClickedYes: _logout),
          CustomModalDelete(visible: _modalVisible3, modalText: _modalText3, onClickedNo: () => setState(() => _modalVisible3 = false), onClickedYes: _handleYes3),
        ],
      ),
    );
  }
}
