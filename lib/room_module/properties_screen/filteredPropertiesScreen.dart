
import 'package:project_management/consts/const.dart';
import 'package:project_management/comman_widget/property_card.dart';

class FilteredPropertiesScreen extends StatelessWidget {
  final String filterType;
  final List<Property> filteredProperties;

  const FilteredPropertiesScreen({
    super.key,
    required this.filterType,
    required this.filteredProperties,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightestYellow,

      appBar: AppBar(
        backgroundColor: lightYellow,
        iconTheme: IconThemeData(
            color: orange
        ),
        title: '$filterType Properties'.text.color(orange).make(),
      ),
      body: filteredProperties.isEmpty
          ? Center(
        child: 'No properties found for $filterType.'
            .text
            .color(Colors.grey)
            .size(16)
            .make()
            .pOnly(top: 50),
      )
          : GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: filteredProperties.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          final property = filteredProperties[index];
          return PropertyCard(property, context);
        },
      ),
    );
  }
}
