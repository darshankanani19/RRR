import 'package:project_management/consts/const.dart';
import 'package:project_management/room_module/properties_screen/filteredPropertiesScreen.dart';
import 'package:project_management/room_module/properties_screen/property_section.dart';

class PropertyDetailsScreen extends StatelessWidget {
  final Property property;

  const PropertyDetailsScreen({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    // Filter properties of the same type, excluding the current one
    final List<Property> similarProperties = allProperties
        .where((p) => p.type == property.type && p.id != property.id)
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text(property.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Property Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                property.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.image_not_supported),
              ),
            ),
            const SizedBox(height: 16),
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
                    // Title
                    property.title.text
                        .fontFamily(semibold)
                        .size(20)
                        .make(),

                    8.heightBox,

                    // Price
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
                        const Icon(Icons.location_on, color: Colors.blueGrey, size: 18),
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
                        const Icon(Icons.bed, color: Colors.blueGrey, size: 18),
                        4.widthBox,
                        property.type.text
                            .color(Purple)
                            .size(16)
                            .fontFamily(semibold)
                            .make(),
                      ],
                    ),

                    12.heightBox,

                    // Description
                    "Description"
                        .text
                        .color(Purple)
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
            ),

            // Similar Properties Section
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
