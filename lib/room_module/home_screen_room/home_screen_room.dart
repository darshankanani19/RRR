import 'package:project_management/consts/const.dart';
import '../properties_screen/filteredPropertiesScreen.dart';
import '../properties_screen/property_section.dart';

class HomeScreenRoom extends StatefulWidget {
  const HomeScreenRoom({super.key});

  @override
  State<HomeScreenRoom> createState() => _HomeScreenRoomState();
}

class _HomeScreenRoomState extends State<HomeScreenRoom> {
  String selectedFilter = 'Rent';
  List<Property> get filteredProperties => allProperties
      .where((property) => property.type == selectedFilter)
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: lightestYellow, // Applying background color to Scaffold
      body: SingleChildScrollView(
        physics:
            const BouncingScrollPhysics(), // Added for a nice scroll effect
        child: Column(
          children: [
            20.heightBox,
            // Ads session for promotion
            VxSwiper.builder(
              autoPlay: true,
              height: context.screenHeight * 0.2,
              aspectRatio: 16 / 9,
              enlargeCenterPage: true,
              itemCount: adsRoomList.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  adsRoomList[index],
                  fit: BoxFit.cover,
                  width: context.screenWidth * 0.8,
                  height: context.screenHeight * 0.2,
                )
                    .box
                    .rounded
                    .height(context.screenHeight * 0.2)
                    .clip(Clip.antiAlias)
                    .margin(const EdgeInsets.symmetric(horizontal: 10))
                    .make();
              },
            ),

            15.heightBox,
            // Filter Buttons Section
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildFilterButton('Rent', 'assets/photos/room/best1.jpg'),
                  _buildFilterButton('Share', 'assets/photos/room/best3.jpg'),
                  _buildFilterButton('Buy', 'assets/photos/room/best2.jpg'),
                ],
              ),
            ),
            Column(
              children: [
                15.heightBox,
                PropertySection(
                  title: 'Popular',
                  properties: bestPropertiesList,
                  onArrowTap: () {
                    // Navigate to full list or filtered screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => FilteredPropertiesScreen(
                            filterType: "Popular",
                            filteredProperties: bestPropertiesList,
                          ),
                        ));
                  },
                ),
                PropertySection(
                  title: nearYou,
                  properties: nearbyRoomsList,
                  onArrowTap: () {
                    // Navigate to full list or filtered screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => FilteredPropertiesScreen(
                            filterType: "Popular",
                            filteredProperties: nearbyRoomsList,
                          ),
                        ));
                  },
                ),
              ],
            ).paddingSymmetric(horizontal: 15),
            40.heightBox,
          ],
        ),
      ),
    );
  }

  Widget _buildFilterButton(String filterType, String imgUrl) {
    return Column(
      children: [
        Image.asset(
          imgUrl,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ).box.clip(Clip.antiAlias).roundedLg.shadowSm.make(),
       10.heightBox,
        filterType.text
            .color(orange)
            .fontFamily(semibold)
            .size(16)
            .makeCentered(),
      ],
    )
        .box
        .margin(const EdgeInsets.symmetric(vertical: 5))
        .padding(const EdgeInsets.all(10))
        .width(context.screenWidth * 0.3333)
        .make()
        .onTap(() {
      List<Property> filtered = allProperties
          .where((property) => property.type == filterType)
          .toList();

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FilteredPropertiesScreen(
            filterType: filterType,
            filteredProperties: filtered,
          ),
        ),
      );
    });
  }

}
