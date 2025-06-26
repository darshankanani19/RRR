import 'package:project_management/comman_widget/property_card.dart';
import 'package:project_management/consts/const.dart';


class FavouritePropertiesScreen extends StatelessWidget {
  const FavouritePropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightestYellow,
      appBar: AppBar(
        backgroundColor: lightYellow,
        title: "My Favourites".text.color(orange).make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: favouriteProperties.isEmpty
            ? Center(
          child: "No favourites added yet!"
              .text
              .size(18)
              .color(Colors.grey)
              .make(),
        )
            : GridView.builder(
          itemCount: favouriteProperties.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.75, // Adjust for card height
          ),
          itemBuilder: (context, index) {
            return PropertyCard(favouriteProperties[index], context);
          },
        ),
      ),
    );
  }
}
