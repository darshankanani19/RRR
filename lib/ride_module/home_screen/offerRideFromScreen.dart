import 'package:flutter/material.dart';

class OfferRideFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Offer a Ride')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'From')),
            TextField(decoration: InputDecoration(labelText: 'To')),
            TextField(decoration: InputDecoration(labelText: 'Price')),
            ElevatedButton(
              onPressed: () {
                // Submit Ride Offer Logic
              },
              child: Text('Offer Ride'),
            ),
          ],
        ),
      ),
    );
  }
}