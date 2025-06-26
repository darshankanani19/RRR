import 'package:flutter/material.dart';
import 'searchResultScreen.dart';

class FindRideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Find a Ride')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'From')),
            TextField(decoration: InputDecoration(labelText: 'To')),
            ElevatedButton(
              onPressed: () {
                // Navigate to Search Results
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchResultsScreen()),
                );
              },
              child: Text('Search Rides'),
            ),
          ],
        ),
      ),
    );
  }
}