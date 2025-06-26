import 'package:flutter/material.dart';
import 'rideDetailsScreen.dart';

class SearchResultsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Results')),
      body: ListView.builder(
        itemCount: 10, // Replace with actual ride count
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text('Ride from A to B'),
              subtitle: Text('Price: ₹300 | Time: 8:30 AM'),
              trailing: ElevatedButton(
                onPressed: () {
                  // Navigate to Ride Details
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RideDetailsScreen()),
                  );
                },
                child: Text('Details'),
              ),
            ),
          );
        },
      ),
    );
  }
}