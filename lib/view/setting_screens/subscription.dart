import 'package:project_management/consts/const.dart';
class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "My Subscriptions".text.make()),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: subscriptionsList.length,
        itemBuilder: (context, index) {
          final item = subscriptionsList[index];
          final statusColor = item['status'] == 'Ongoing' ? Colors.green : Colors.red;

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.pink[50],
              child: Icon(Icons.food_bank, color: Purple),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                item['vendor']!.text.color(Colors.black54).make(),
                item['plan']!.text.bold.color(Purple).make(),
              ],
            ),
            subtitle: item['status']!.text.color(statusColor).make(),
            trailing: const Icon(Icons.chevron_right),
            contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          );
        },
      ),
    );
  }
}
