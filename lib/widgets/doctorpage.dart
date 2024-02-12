import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: Doctor Name'), // Replace with actual data or remove
            Text('Qualifications: Doctor Qualifications'), // Replace with actual data or remove
            Text('Specialization: Doctor Specialization'), // Replace with actual data or remove
            Text('Organization: Doctor Organization'), // Replace with actual data or remove
            Text('Chamber: Doctor Chamber'), // Replace with actual data or remove
            Text('Phone Number: Doctor Phone Number'), // Replace with actual data or remove
            ElevatedButton(
              onPressed: () {
                // Perform the navigation to DoctorPage here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DoctorPage()),
                );
              },
              child: Text('Book Appointment'),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement the DoctorPage UI as needed
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor List'),
        backgroundColor: Color(0xFFF2BEA1),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Doctor Page Content'), // Replace with actual content
      ),
    );
  }
}
