
import 'package:project_management/consts/const.dart';

class OrderHistoryScreen extends StatefulWidget {
  final String? title;

  const OrderHistoryScreen({super.key, required this.title});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistoryScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.title?.text.make() ?? "Order History".text.make(),
      ),
      body: ListView.builder(
        itemCount: orderList.length,
        itemBuilder: (context, index) {
          final order = orderList[index];
          final status = order['status'] ?? '';
          final statusColor = status.toLowerCase() == 'success' ? Colors.green : Colors.red;

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (order['title'] ?? '').text.color(Colors.black45).size(16).make(),
                  5.heightBox,
                  (order['type'] ?? '').text.fontFamily(bold).color(Colors.black).size(18).make(),
                ],
              ),
              subtitle: (order['dateAndTime'] ?? '').text.color(Colors.black45).size(16).make(),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (order['status'] ?? '').text.color(statusColor).size(14).make(),
                  5.heightBox,
                  (order['Price'] ?? '').text.fontFamily(bold).color(Colors.black).make(),
                ],
              ),
              leading: Image.asset(order['image'].toString(),fit: BoxFit.cover,).box.margin(EdgeInsets.all(3)).roundedSM.make(),
            ),
            
          );
        },
      ),
    );
  }
}
