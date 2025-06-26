import 'package:project_management/consts/const.dart';
import 'package:project_management/room_module/chat_screen/chat_detail.dart';
import 'package:project_management/room_module/model/chat_model.dart';
import 'package:project_management/room_module/properties_screen/filteredPropertiesScreen.dart';
import 'package:project_management/room_module/properties_screen/property_section.dart';

class PropertyDetailsScreen extends StatelessWidget {
  final Property property;

  const PropertyDetailsScreen({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    // Filter similar properties
    final List<Property> similarProperties = allProperties
        .where((p) => p.type == property.type && p.id != property.id)
        .toList();

    return Scaffold(
      backgroundColor: lightestYellow,
      appBar: AppBar(
          backgroundColor: lightYellow,
          iconTheme: IconThemeData(
            color: orange
          ),
          title: property.title.text.color(orange).make()),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                property.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.image_not_supported),
              ),
            ),
            const SizedBox(height: 16),

            // Property Info
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    property.title.text.fontFamily(semibold).size(20).make(),
                    8.heightBox,
                    "₹ ${property.price}"
                        .text
                        .color(Colors.green)
                        .size(18)
                        .fontFamily(bold)
                        .make(),
                    8.heightBox,

                    // Location
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: Colors.blueGrey),
                        4.widthBox,
                        property.location.text
                            .color(Colors.blueGrey)
                            .size(16)
                            .make(),
                      ],
                    ),

                    8.heightBox,

                    // Type
                    Row(
                      children: [
                        const Icon(Icons.bed, color: Colors.blueGrey),
                        4.widthBox,
                        property.type.text
                            .color(orange)
                            .size(16)
                            .fontFamily(semibold)
                            .make(),
                      ],
                    ),

                    12.heightBox,

                    // Description + Chat
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Description"
                                  .text
                                  .color(orange)
                                  .fontFamily(bold)
                                  .size(16)
                                  .make(),
                              6.heightBox,
                              property.description.text
                                  .size(14)
                                  .color(Colors.black87)
                                  .make(),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.chat_outlined,
                          size: 40,
                          color: orange,
                        ).box.make().onTap(() {
                          // 👉 On Chat Tap: Navigate to ChatDetailScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ChatDetailScreen(
                                chat: Chat(
                                  roomId: 'room_${property.id}',
                                  userId: 'user_darshan',
                                  userName: 'Darshan Kanani',
                                  dealerId: 'dealer_${property.id}',
                                  dealerName: 'Dealer Name',
                                  lastMessage: 'Hello! Interested in this property.',
                                  timestamp: DateTime.now().toIso8601String(),
                                  unreadCount: 0,
                                  messages: [
                                    'Darshan: Hello! Interested in this property.',
                                    'Dealer: Sure, let me know your questions.'
                                  ],
                                  property: property,
                                ),
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Similar Properties
            if (similarProperties.isNotEmpty)
              PropertySection(
                title: 'Similar ${property.type} Options',
                properties: similarProperties,
                onArrowTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => FilteredPropertiesScreen(
                        filterType: property.type,
                        filteredProperties: similarProperties,
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
