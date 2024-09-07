import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ComplaintDetails extends StatefulWidget {
  final Map<String, dynamic> item;
  final String date;

  ComplaintDetails({required this.item, required this.date});

  @override
  _ComplaintDetailsState createState() => _ComplaintDetailsState();
}

class _ComplaintDetailsState extends State<ComplaintDetails> {
  final TextEditingController _commentController = TextEditingController();
  final TextEditingController _replyController = TextEditingController();
  final TextEditingController _reportController = TextEditingController();

  List<Map<String, dynamic>> _commentsList = [];
  List<Map<String, dynamic>> _rootComments = [];
  bool _showReplyInput = false;
  bool _isModalVisible = false;

  late String _currUserId;
  late String _complaintId;
  late String _date;
  late List<String> _images;
  late Map<String, dynamic> _details;

  @override
  void initState() {
    super.initState();
    _details = widget.item;
    _date = widget.date;
    _complaintId = _details['_id'];
    _images = List<String>.from(_details['images'] ?? []);
    _getCurrentUserId();
    _fetchComments();
  }

  Future<void> _getCurrentUserId() async {
    // Retrieve user ID, username, email, etc.
    // For example:
    setState(() {
      _currUserId = "dummyUserId"; // Replace with actual retrieval
    });
  }

  Future<void> _fetchComments() async {
    final response = await http.get(Uri.parse('https://yourapiurl/getComments/$_complaintId'));
    if (response.statusCode == 200) {
      setState(() {
        _commentsList = List<Map<String, dynamic>>.from(json.decode(response.body));
      });
    } else {
      throw Exception('Failed to load comments');
    }
  }

  Future<void> _saveComment() async {
    final response = await http.post(
      Uri.parse('https://yourapiurl/saveComments'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, dynamic>{
        'message': _commentController.text,
        'userId': _currUserId,
        'complaintId': _complaintId,
      }),
    );
    if (response.statusCode == 200) {
      _commentController.clear();
      _fetchComments();
    } else {
      throw Exception('Failed to save comment');
    }
  }

  Future<void> _handleReplySubmit(String parentId) async {
    final response = await http.post(
      Uri.parse('https://yourapiurl/saveReplies/$parentId'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, dynamic>{
        'message': _replyController.text,
        'userId': _currUserId,
      }),
    );
    if (response.statusCode == 200) {
      _replyController.clear();
      setState(() {
        _showReplyInput = false;
      });
      _fetchComments();
    } else {
      throw Exception('Failed to save reply');
    }
  }

  Future<void> _handleReport() async {
    final response = await http.get(
      Uri.parse('https://yourapiurl/reportComment/$_currUserId/$_complaintId/${_reportController.text}'),
    );
    if (response.statusCode == 200) {
      setState(() {
        _isModalVisible = false;
      });
    } else {
      throw Exception('Failed to report comment');
    }
  }

  List<Widget> _buildCommentItems(List<Map<String, dynamic>> comments) {
    return comments.map((comment) {
      return Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(comment['userId']?['fullname'] ?? 'Anonymous'),
            subtitle: Text(comment['message']),
            trailing: Text(comment['Date']?.substring(0, 15) ?? ''),
          ),
          if (_showReplyInput)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: _replyController,
                decoration: InputDecoration(
                  hintText: 'Write a reply',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () => _handleReplySubmit(comment['_id']),
                  ),
                ),
                maxLines: null,
              ),
            ),
          if (comment['children'] != null)
            ..._buildCommentItems(List<Map<String, dynamic>>.from(comment['children'])),
        ],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaint Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (_images.isNotEmpty)
              CarouselSlider(
                options: CarouselOptions(autoPlay: true),
                items: _images.map((url) {
                  return CachedNetworkImage(imageUrl: url);
                }).toList(),
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _details['title'] ?? 'No Title',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(height: 16),
                  Text('Date: $_date'),
                  SizedBox(height: 16),
                  Text('Status: ${_details['statusbar'] ?? 'Unknown'}%'),
                  LinearProgressIndicator(
                    value: (_details['statusbar'] ?? 0) / 100,
                  ),
                  SizedBox(height: 16),
                  Text('Description: ${_details['description'] ?? 'No Description'}'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Comments:'),
                  ..._buildCommentItems(_commentsList),
                  SizedBox(height: 16),
                  TextField(
                    controller: _commentController,
                    decoration: InputDecoration(
                      hintText: 'Add a comment',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.send),
                        onPressed: _saveComment,
                      ),
                    ),
                    maxLines: null,
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            if (_isModalVisible)
              AlertDialog(
                title: Text('Report Comment'),
                content: TextField(
                  controller: _reportController,
                  decoration: InputDecoration(hintText: 'Reason for reporting'),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _isModalVisible = false;
                      });
                    },
                    child: Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: _handleReport,
                    child: Text('Report'),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
