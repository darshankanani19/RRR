import 'package:project_management/consts/const.dart';
import 'package:project_management/room_module/chat_screen/chat_detail.dart';

import '../model/chat_model.dart';

class ChatHomeScreen extends StatefulWidget {
  const ChatHomeScreen({super.key});

  @override
  State<ChatHomeScreen> createState() => _ChatHomeScreenState();
}

class _ChatHomeScreenState extends State<ChatHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightestYellow,
      appBar: AppBar(
        backgroundColor: lightYellow,
        iconTheme: IconThemeData(
            color: orange
        ),
        title: "My Chats".text.color(orange).make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: List.generate(userChats.length, (index) {
            Chat chat = userChats[index];
            return ListTile(
              title: chat.dealerName.text.make(),
              leading: Image.asset(
                chat.property.imageUrl,
                fit: BoxFit.cover,
                width: 60,
                height: 60,
              ).box.clip(Clip.antiAlias).shadowSm.roundedFull.make(),
              subtitle: chat.lastMessage.text.make(),
              trailing: chat.unreadCount.text.size(18).fontFamily(bold).color(orange).capitalize.make(),
            ).box.white.margin(EdgeInsets.symmetric(vertical: 3,horizontal: 10)).roundedSM.make().onTap(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChatDetailScreen(chat: chat),
                ),
              );
            });
            ;
          }),
        ),
      ),
    );
  }
}
