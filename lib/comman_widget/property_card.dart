import 'package:project_management/consts/const.dart';
import '../room_module/properties_screen/property_details_screen.dart';

Widget PropertyCard(Property property, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PropertyDetailsScreen(property: property),
        ),
      );
    },
    child: Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Property image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              property.imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.image_not_supported),
            ),
          ),

          // Property details
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  property.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                4.heightBox,

                // Description
                property.description.text
                    .color(Colors.blueGrey)
                    .size(14)
                    .fontFamily(regular)
                    .maxLines(2)
                    .overflow(TextOverflow.ellipsis)
                    .make(),
                4.heightBox,

                // Location
                Row(
                  children: [
                    const Icon(Icons.location_on,
                        color: Colors.blueGrey, size: 18),
                    4.widthBox,
                    Expanded(
                      child: property.location.text
                          .color(Colors.blueGrey)
                          .size(14)
                          .fontFamily(regular)
                          .maxLines(1)
                          .overflow(TextOverflow.ellipsis)
                          .make(),
                    ),
                  ],
                ),
                4.heightBox,

                // Room Type
                Row(
                  children: [
                    const Icon(Icons.bed,
                        color: Colors.blueGrey, size: 18),
                    4.widthBox,
                    Expanded(
                      child: property.type.text
                          .color(Purple)
                          .size(14)
                          .fontFamily(semibold)
                          .maxLines(1)
                          .overflow(TextOverflow.ellipsis)
                          .make(),
                    ),
                  ],
                ),
                4.heightBox,

                // Price
                Row(
                  children: [
                    const Icon(Icons.price_change,
                        color: Colors.blueGrey, size: 18),
                    4.widthBox,
                    Expanded(
                      child: property.price.text
                          .color(Colors.green)
                          .size(14)
                          .fontFamily(bold)
                          .maxLines(1)
                          .overflow(TextOverflow.ellipsis)
                          .make(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
