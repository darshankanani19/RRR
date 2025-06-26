import 'package:project_management/consts/const.dart';
import '../../comman_widget/property_card.dart';

class PropertySection extends StatelessWidget {
  final String title;
  final List<Property> properties;
  final VoidCallback? onArrowTap;

  const PropertySection({
    super.key,
    required this.title,
    required this.properties,
    this.onArrowTap,
  });

  @override
  Widget build(BuildContext context) {
    final visibleCount = properties.length > 4 ? 4 : properties.length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header Row
        Row(
          children: [
            15.widthBox,
            title.text
                .fontFamily(semibold)
                .size(18)
                .color(orange)
                .shadowColor(lightOrange)
                .make(),
            const Spacer(),
            if (onArrowTap != null)
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios_outlined, size: 18),
                onPressed: onArrowTap,
              ),
            if (onArrowTap == null) 15.widthBox,
          ],
        ),
        15.heightBox,

        // GridView of PropertyCards
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 0.7,
          ),
          itemCount: visibleCount,
          itemBuilder: (context, index) {
            final property = properties[index];
            return PropertyCard(property, context);
          },
        ),
        20.heightBox,
      ],
    );
  }
}
