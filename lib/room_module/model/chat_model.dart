import 'package:project_management/room_module/model/property_model.dart';

class Chat {
  final String roomId;
  final String userId;
  final String dealerId;
  final String userName;
  final String dealerName;
  final String lastMessage;
  final String timestamp;
  final int unreadCount;
  final List<String> messages;
  final Property property;

  Chat({
    required this.roomId,
    required this.userId,
    required this.dealerId,
    required this.userName,
    required this.dealerName,
    required this.lastMessage,
    required this.timestamp,
    required this.unreadCount,
    required this.messages,
    required this.property,
  });
}
