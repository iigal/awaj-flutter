import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String? userName;
  final String? userId;
  final List<String> areas = ['Area 1', 'Area 2', 'Area 3']; // Replace with actual data
  final List<Map<String, dynamic>> complaints = [
    {
      'title': 'Sample Complaint 1',
      'status': 'Queue',
      'area': 'Area 1',
      'date': DateTime.now(),
    },
    // Add more complaints as needed
  ];

  HomeScreen({this.userName, this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awaj - Transforming Grievances into Action'),
        actions: [
          userName != null
              ? Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {
                        Navigator.pushNamed(context, '/profile/$userId');
                      },
                    ),
                    Text(userName!),
                    DropdownButton(
                      onChanged: (value) {
                        // Language change logic here
                      },
                      items: [
                        DropdownMenuItem(value: 'en', child: Text('EN')),
                        DropdownMenuItem(value: 'ne', child: Text('NP')),
                      ],
                    ),
                  ],
                )
              : TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('Login'),
                )
        ],
      ),
      drawer: userName != null ? buildDrawer(context) : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (userName != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Dashboard',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            buildComplaintForm(context),
            buildLatestComplaintsTable(context),
          ],
        ),
      ),
    );
  }

  Widget buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Image.asset('assets/images/awaj.png'), 
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () => Navigator.pushNamed(context, '/cms'),
          ),
          ListTile(
            leading: Icon(Icons.list_alt),
            title: Text('Complaints'),
            onTap: () => Navigator.pushNamed(context, '/cms/complaint'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => Navigator.pushNamed(context, '/cms/logout'),
          ),
        ],
      ),
    );
  }

  Widget buildComplaintForm(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Register Complaint',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Complaint Title',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Complaint Description',
              ),
            ),
            SizedBox(height: 16),
            DropdownButtonFormField(
              items: areas.map((String area) {
                return DropdownMenuItem(value: area, child: Text(area));
              }).toList(),
              onChanged: (value) {},
              decoration: InputDecoration(labelText: 'Area of Complaint'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Form validation and submission logic
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLatestComplaintsTable(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Latest Complaints',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cms/complaint');
                  },
                  child: Text('View All'),
                ),
              ],
            ),
            DataTable(
              columns: [
                DataColumn(label: Text('No')),
                DataColumn(label: Text('Complaint Title')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Area of Complaint')),
                DataColumn(label: Text('Date')),
              ],
              rows: complaints.asMap().entries.map((entry) {
                int index = entry.key + 1;
                var complaint = entry.value;
                return DataRow(
                  cells: [
                    DataCell(Text(index.toString())),
                    DataCell(Text(complaint['title'])),
                    DataCell(Text(complaint['status'])),
                    DataCell(Text(complaint['area'])),
                    DataCell(Text(complaint['date'].toString().substring(0, 10))),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
