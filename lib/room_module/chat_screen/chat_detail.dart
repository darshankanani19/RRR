import 'package:project_management/consts/const.dart';
import 'package:project_management/room_module/model/chat_model.dart';

class ChatDetailScreen extends StatelessWidget {
  final Chat chat;

  const ChatDetailScreen({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightestYellow,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: orange
        ),
        backgroundColor: lightYellow,
        title: Row(
          children: [
            Image.asset(
              chat.property.imageUrl,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ).box.roundedFull.clip(Clip.antiAlias).make(),
            10.widthBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                chat.dealerName.text.fontFamily(semibold).color(orange).make(),
                chat.property.title.text.size(12).color(Colors.grey[700]!).make(),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          10.heightBox,
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: chat.messages.length,
              itemBuilder: (context, index) {
                final message = chat.messages[index];
                final isUser = message.startsWith('Darshan:');
                final displayMessage = message.replaceFirst('Darshan: ', '').replaceFirst('${chat.dealerName}: ', '');

                return Align(
                  alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: isUser ? lightOrange : lightestYellow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: displayMessage.text.size(14).color(isUser ? Colors.white : orange).make(),
                  ),
                );
              },
            ),
          ),

          // Message input section
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type a message...",
                      filled: true,
                      fillColor: lightYellow,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                  ),
                ),
                10.widthBox,
                CircleAvatar(
                  backgroundColor: orange,
                  child: const Icon(Icons.send, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
