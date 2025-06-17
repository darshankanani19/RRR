import 'package:flutter/material.dart';
import 'package:project_management/consts/const.dart';

import '../auth_screen/loginScreen.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  void _confirmLogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text("Are you sure?", style: TextStyle(fontWeight: FontWeight.bold)),
        content: Text("You will be logged out from your account."),
        actions: [
          TextButton(
            child: Text("Cancel", style: TextStyle(color: Colors.grey)),
            onPressed: () => Navigator.pop(context),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Purple,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: Text("Logout"),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const LoginScreen()),
                    (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightCream,
      appBar: AppBar(
        title: "Logout".text.fontFamily(bold).make(),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body:  Container(
          width: context.screenWidth,
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(color: Purple, width: 1.2),
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Purple.withOpacity(0.05),
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: InkWell(
            onTap: () => _confirmLogout(context),
            borderRadius: BorderRadius.circular(16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Purple.withOpacity(0.1),
                  child: Icon(Icons.logout, color: Purple),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Logout".text.color(Purple).fontFamily(semibold).size(17).make(),
                    "Securely exit your account".text.color(Colors.grey[600]!).size(13).make(),
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
              ],
            ),
          ),
        ),

    );
  }
}
