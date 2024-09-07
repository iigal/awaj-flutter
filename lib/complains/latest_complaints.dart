import 'package:awaj/components/custom_modal.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:provider/provider.dart';


import 'package:awaj/global_context_provider.dart';

class LatestComplaints extends StatefulWidget {
  @override
  _LatestComplaintsState createState() => _LatestComplaintsState();
}

class _LatestComplaintsState extends State<LatestComplaints> {
  bool _loggedIn = false;
  bool _isCollapsed = true;
  bool _isVisible = false;
  bool _refreshing = false;
  bool _spinner = false;

  List<Map<String, dynamic>> _complaintsList = [];
  List<Map<String, dynamic>> _filteredData = [];
  List<Map<String, dynamic>> _items = [
    {'label': 'Success', 'value': 'Success'},
    {'label': 'Progress', 'value': 'Progress'},
    {'label': 'Queue', 'value': 'Queue'},
    {'label': 'All', 'value': 'All'},
  ];
  List<Map<String, dynamic>> _itemsArea = [
    {'label': 'food', 'value': 'food'},
    {'label': 'road', 'value': 'road'},
    {'label': 'Water Pipe', 'value': 'Water Pipe'},
    {'label': 'All', 'value': 'All'},
  ];

  String _selectedStatus = 'All';
  String _selectedArea = 'All';

  late List<dynamic> _glist;
  late List<Map<String, dynamic>> _areaList;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() async {
    // Fetch data and update state
    // Example fetch function, replace with your own logic
    try {
      final response = await http.get(Uri.parse('https://yourapiurl/getComplaints'));
      if (response.statusCode == 200) {
        setState(() {
          _complaintsList = List<Map<String, dynamic>>.from(json.decode(response.body));
          _filteredData = _complaintsList;
        });
      }
    } catch (e) {
      // Handle error
    }
  }

  void _checkToken() async {
    // Check authentication token
    // Example check function, replace with your own logic
    final token = await http.get(Uri.parse('https://yourapiurl/getToken'));
    if (token == null || token == '') {
      setState(() {
        _loggedIn = false;
      });
    } else {
      setState(() {
        _loggedIn = true;
      });
    }
  }

  void _filterData(String status, String area) {
    List<Map<String, dynamic>> filteredArray = _complaintsList;

    if (status != 'All') {
      filteredArray = filteredArray.where((item) => item['status'] == status).toList();
    }

    if (area != 'All') {
      filteredArray = filteredArray.where((item) => item['area'] == area).toList();
    }

    setState(() {
      _filteredData = filteredArray;
    });
  }

  void _handleStatusChange(String? value) {
    setState(() {
      _selectedStatus = value ?? 'All';
      _filterData(_selectedStatus, _selectedArea);
    });
  }

  void _handleAreaChange(String? value) {
    setState(() {
      _selectedArea = value ?? 'All';
      _filterData(_selectedStatus, _selectedArea);
    });
  }

  void _navigateToDetails(Map<String, dynamic> item) {
    Navigator.pushNamed(context, '/complaintDetails', arguments: {
      'items': item,
      'date': item['Date'].substring(0, 15),
    });
  }

  void _reloadData() async {
    setState(() {
      _refreshing = true;
    });

    try {
      // Reload data
      // Example reload function, replace with your own logic
      final response = await http.get(Uri.parse('https://yourapiurl/getComplaints'));
      if (response.statusCode == 200) {
        setState(() {
          _complaintsList = List<Map<String, dynamic>>.from(json.decode(response.body));
          _filteredData = _complaintsList;
        });
      }
    } catch (e) {
      // Handle error
      setState(() {
        _modalVisible = true;
        _dynamicModalText = 'Something went wrong. Please check your Internet Connection!';
      });
    } finally {
      setState(() {
        _refreshing = false;
      });
    }
  }
  bool _modalVisible = false;
  String _dynamicModalText = "";
  @override
  Widget build(BuildContext context) {
    final contextProvider = Provider.of<GlobalProvider>(context);
    _glist = contextProvider.glist;
    _areaList = contextProvider.areaList;

    return Scaffold(
      appBar: AppBar(
        title: Text('Latest Complaints'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _reloadData,
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          _reloadData();
        },
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            // Status Filter
            DropdownButton(
              isExpanded: true,
              hint: Text('Filter by Status'),
              value: _selectedStatus,
              items: _items.map((item) {
                return DropdownMenuItem<String>(
                  value: item['value'],
                  child: Text(item['label']),
                );
              }).toList(),
              onChanged: _handleStatusChange,
            ),

            // Area Filter
            DropdownButton(
              isExpanded: true,
              hint: Text('Filter by Area'),
              value: _selectedArea,
              items: _itemsArea.map((item) {
                return DropdownMenuItem<String>(
                  value: item['value'],
                  child: Text(item['label']),
                );
              }).toList(),
              onChanged: _handleAreaChange,
            ),

            SizedBox(height: 20),

            // Complaints List
            ..._filteredData.map((item) {
              return ListTile(
                title: Text(item['title']),
                subtitle: Text(item['Date'].substring(0, 15)),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: _setColor(item['status']),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    item['status'],
                    style: TextStyle(color: _setTextColor(item['status'])),
                  ),
                ),
                onTap: () => _navigateToDetails(item),
              );
            }).toList(),

            // Custom Modal
            if (_modalVisible)
              CustomModal(
                visible: _modalVisible,
                modalText: _dynamicModalText,
                onClose: () {
                  setState(() {
                    _modalVisible = false;
                  });
                },
              ),
          ],
        ),
      ),
    );
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
        return Colors.white;
      case 'Queue':
        return Colors.white;
      default:
        return Colors.white;
    }
  }
}
