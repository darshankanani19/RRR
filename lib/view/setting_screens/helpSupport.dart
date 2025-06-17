import 'package:project_management/consts/const.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  void _openSupport(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Need Help?"),
        content: Text("Email us at support@example.com\nor call +91-1234567890."),
        actions: [
          TextButton(
            child: Text("Close", style: TextStyle(color: Purple)),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightCream,
      appBar: AppBar(
        title: "Help & Support".text.fontFamily(bold).make(),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Container(
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
            onTap: () => _openSupport(context),
            borderRadius: BorderRadius.circular(16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Purple.withOpacity(0.1),
                  child: Icon(Icons.help_outline, color: Purple),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Help & Support".text.color(Purple).fontFamily(semibold).size(17).make(),
                    "Contact us about any issue".text.color(Colors.grey[600]!).size(13).make(),
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
