import 'package:flutter/material.dart';
import 'package:project_management/consts/const.dart';
import 'package:project_management/consts/list.dart';

class PrivacySettingsScreen extends StatelessWidget {
  const PrivacySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightCream,
      appBar: AppBar(title: "Privacy & Settings".text.fontFamily(bold).make()),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: settingsList.length,
        itemBuilder: (context, index) {
          final setting = settingsList[index];
          return ListTile(
            title: setting['title']!.text.color(Purple).fontFamily(semibold).make(),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Purple),
            onTap: () {

            },
          );
        },
      ),
    );
  }
}
