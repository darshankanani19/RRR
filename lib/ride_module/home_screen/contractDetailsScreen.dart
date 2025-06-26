import 'package:flutter/material.dart';

class ContractDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contract Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Contract #123', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Details about the contract...', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to end contract
              },
              child: Text('End Contract'),
            ),
          ],
        ),
      ),
    );
  }
}