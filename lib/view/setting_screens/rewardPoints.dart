import 'package:flutter/material.dart';
import 'package:project_management/consts/const.dart';
import 'package:project_management/consts/list.dart';

class RewardPointsScreen extends StatelessWidget {
  const RewardPointsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightCream,
      appBar: AppBar(title: "Reward Points".text.fontFamily(bold).make()),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: rewardList.length,
        itemBuilder: (context, index) {
          final reward = rewardList[index];
          return ListTile(
            leading: const Icon(Icons.star, color: Purple),
            title: reward['title']!.text.color(Colors.black).fontFamily(semibold).make(),
            trailing: "+${reward['points']} pts".text.color(Purple).make(),
          );
        },
      ),
    );
  }
}
