import 'package:flutter/material.dart';

class RideDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ride Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Ride from A to B', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Price: ₹300', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text('Details about the ride...', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Request Ride Logic
              },
              child: Text('Request Ride'),
            ),
          ],
        ),
      ),
    );
  }
}