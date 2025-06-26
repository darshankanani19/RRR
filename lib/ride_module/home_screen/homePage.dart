import 'package:flutter/material.dart';
import 'package:project_management/consts/const.dart';
import 'findRideScreen.dart';
import 'offerRideFromScreen.dart';
import 'searchResultScreen.dart';

class HomeScreenRide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for rides...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Suggested Rides Section
            Text('Suggested Rides', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Replace with actual ride count
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text('Ride from A to B'),
                      subtitle: Text('Price: ₹300 | Time: 8:30 AM'),
                      trailing: ElevatedButton(
                        onPressed: () {
                          // Navigate to Ride Details
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SearchResultsScreen()),
                          );
                        },
                        child: Text('View'),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Offer Ride Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OfferRideFormScreen()),
                );
              },
              child: Text('Offer a Ride'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}