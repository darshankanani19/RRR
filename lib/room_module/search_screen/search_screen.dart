import 'package:project_management/consts/const.dart';
import 'package:project_management/comman_widget/property_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightestYellow,
      appBar: AppBar(
        backgroundColor: lightYellow,
        title: "Search".text.color(orange).make(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchBox(),

            16.heightBox,

            if (favouriteProperties.isNotEmpty) ...[
              "Favourites".text.size(16).color(orange).fontFamily(bold).make(),
              8.heightBox,
              SizedBox(
                height: 280,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: favouriteProperties.length,
                  separatorBuilder: (context, index) => 12.widthBox,
                  itemBuilder: (context, index) {
                    final property = favouriteProperties[index];
                    return SizedBox(
                      width: 180, // Width of each PropertyCard
                      child: PropertyCard(property, context),
                    );
                  },
                ),
              ),

            ],
10.heightBox,
            // Popular Properties Section
            "Popular Properties".text.size(16).fontFamily(bold).color(orange).make(),
            8.heightBox,
            SizedBox(
              height: 280,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: allProperties.length,
                separatorBuilder: (context, index) => 12.widthBox,
                itemBuilder: (context, index) {
                  final property = allProperties[index];
                  return SizedBox(
                    width: 180,
                    child: PropertyCard(property, context),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Search...",
        prefixIcon: const Icon(Icons.search_outlined),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: orange),
        ),
      ),
      onTap: () {
      },
    );
  }
}
