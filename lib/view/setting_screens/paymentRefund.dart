import 'package:flutter/material.dart';
import 'package:project_management/consts/const.dart';
import 'package:project_management/consts/list.dart';

class PaymentRefundScreen extends StatelessWidget {
  const PaymentRefundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Payment & Refund".text.fontFamily(bold).make(),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ...paymentRefundList.map(
                (txn) => Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.payment, color: Purple),
                  title: "Transaction ID".text.size(16).color(Colors.black).make(),
                  subtitle: txn['transactionId']!.toString().text.color(Colors.black45).make(),
                  trailing: txn['amount']!.toString().text.color(Purple).fontFamily(bold).make(),
                ),
                const Divider(),
              ],
            ),
          ),
          20.heightBox,
          "Need help with a refund?".text.color(Colors.black87).make(),
          5.heightBox,
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Purple,
              foregroundColor: lightPurple,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
            },
            child: contactSupport.text.fontFamily(semibold).white.make(),
          ),
        ],
      ),
    );
  }
}
