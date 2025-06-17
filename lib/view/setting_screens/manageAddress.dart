import 'package:flutter/material.dart';
import 'package:project_management/consts/const.dart';
import 'package:project_management/consts/list.dart';

class ManageAddressScreen extends StatelessWidget {
  const ManageAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Manage Address".text.fontFamily(bold).make(),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: addressList.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final address = addressList[index];
          return ListTile(
            leading: const Icon(Icons.location_on, color: Purple),
            title: address['title']!.text.fontFamily(semibold).color(Colors.black).make(),
            subtitle: address['details']!.text.color(Colors.black54).make(),
            trailing: IconButton(
              icon: const Icon(Icons.edit, color: Purple),
              onPressed: () {
                // TODO: Navigate to Edit Address Screen
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Purple,
        onPressed: () {
          // TODO: Navigate to Add Address Screen
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
