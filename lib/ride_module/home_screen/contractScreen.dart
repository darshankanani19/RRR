import 'package:flutter/material.dart';
import 'contractDetailsScreen.dart';

class ContractsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Contracts')),
      body: ListView.builder(
        itemCount: 5, // Replace with actual contract count
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text('Contract #$index'),
              subtitle: Text('Status: Active'),
              onTap: () {
                // Navigate to Contract Details
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContractDetailsScreen()),
                );
              },
            ),
          );
        },
      ),
    );
  }
}