import 'dart:ui';

import 'package:project_management/consts/const.dart';
import 'package:project_management/view/notification/notification_screen.dart';
import '../../comman_widget/iconButton.dart';
import '../restaurant_screen/restaurant_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentLocation = "Location";
  Map<String, bool> categoryFilters = {
    'Veg': false,
    'Non-Veg': false,
  };

  Map<String, bool> cuisineFilters = {
    'North Indian': false,
    'Mexican': false,
    'Bengali': false,
    'South Indian': false,
  };

  Map<String, bool> sortByFilters = {
    'Low Cost First': false,
    'High Cost First': false,
    'Near Me': false,
  };

  void _showFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: cream,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: StatefulBuilder(
              builder: (context, setModalState) {
                void resetFilters() {
                  setModalState(() {
                    categoryFilters.updateAll((key, value) => false);
                    cuisineFilters.updateAll((key, value) => false);
                    sortByFilters.updateAll((key, value) => false);
                  });
                }

                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      10.heightBox,
                      'Filter Options'.text.size(18).fontFamily(bold).color(Purple).make(),

                      15.heightBox,
                      'Category'.text.size(16).fontFamily(semibold).make(),
                      ...categoryFilters.keys.map((key) => CheckboxListTile(
                        title: Text(key),
                        activeColor: Purple,
                        value: categoryFilters[key],
                        onChanged: (val) {
                          setModalState(() {
                            categoryFilters[key] = val!;
                          });
                        },
                      )),

                      10.heightBox,
                      'Cuisine'.text.size(16).fontFamily(semibold).make(),
                      ...cuisineFilters.keys.map((key) => CheckboxListTile(
                        title: Text(key),
                        activeColor: Purple,
                        value: cuisineFilters[key],
                        onChanged: (val) {
                          setModalState(() {
                            cuisineFilters[key] = val!;
                          });
                        },
                      )),

                      10.heightBox,
                      'Sort By'.text.size(16).fontFamily(semibold).make(),
                      ...sortByFilters.keys.map((key) => CheckboxListTile(
                        title: Text(key),
                        activeColor: Purple,
                        value: sortByFilters[key],
                        onChanged: (val) {
                          setModalState(() {
                            sortByFilters[key] = val!;
                          });
                        },
                      )),

                      20.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: lightPurple,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: resetFilters,
                            child: 'Reset'.text.white.make(),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Purple,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              setState(() {}); // triggers full screen rebuild with updated filters
                            },
                            child: 'Apply'.text.white.make(),
                          ),
                        ],
                      ),
                      10.heightBox,
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  List<String> selectedCategories = [];
  List<String> selectedCuisines = [];
  String selectedSort = "";

  void _showLocationDialog() {
    String tempLocation = currentLocation;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Enter Location"),
        content: TextField(
          autofocus: true,
          decoration: const InputDecoration(
            hintText: "Type your location",
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            tempLocation = value;
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                currentLocation = tempLocation;
              });
              Navigator.of(context).pop();
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: currentLocation.text.make().onTap(_showLocationDialog),
        leading: const Icon(Icons.location_on_outlined),
        actions: [
          const Icon(Icons.notifications_active_outlined)
              .marginSymmetric(horizontal: 10)
              .onTap(() {Get.to(()=>NotificationScreen());}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              20.heightBox,
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: screenWidth * 0.85,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20),
                    ),
                  ).box.shadowMd.make(),
                ),
              ),
              15.heightBox,
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: todayOffers.text
                      .fontFamily(bold)
                      .size(20)
                      .color(Colors.black)
                      .align(TextAlign.left)
                      .make(),
                ),
              ),
              10.heightBox,
              SizedBox(
                height: screenWidth * 0.3,
                width: double.infinity,
                child: VxSwiper.builder(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  itemCount: offersList.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      offersList[index],
                      fit: BoxFit.cover,
                    )
                        .box
                        .rounded
                        .clip(Clip.antiAlias)
                        .margin(const EdgeInsets.symmetric(horizontal: 8))
                        .make();
                  },
                ),
              ),
              15.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: List.generate(
                    titleList.length,
                        (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ButtonIcon(
                        title: titleList[index],
                        icon: iconList[index],
                      ),
                    ),
                  ),
                ),
              ),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  popular.text.fontFamily(bold).size(18).make().marginSymmetric(horizontal: 15),
                  seeAll.text.fontFamily(regular).size(16).make().marginSymmetric(horizontal: 15).onTap(() {}),
                ],
              ),
              15.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(4, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: screenWidth * 0.6,
                      decoration: BoxDecoration(
                        color: lightCream,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            offset: Offset(2, 4),
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image.asset(
                              tiffinImgList[index],
                              height: 100,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          5.heightBox,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: tiffinTitleList[index]
                                      .text
                                      .fontFamily(semibold)
                                      .size(18)
                                      .color(Purple)
                                      .make(),
                                ),
                                tiffinPriceList[index]
                                    .text
                                    .fontFamily(regular)
                                    .size(16)
                                    .color(lightCream)
                                    .makeCentered()
                                    .box
                                    .size(50, 30)
                                    .color(Purple)
                                    .roundedSM
                                    .makeCentered(),
                              ],
                            ),
                          ),
                          5.heightBox,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: tiffinDescriptionList[index]
                                .text
                                .fontFamily(regular)
                                .size(14)
                                .color(Colors.black45)
                                .maxLines(2)
                                .overflow(TextOverflow.ellipsis)
                                .make(),
                          ),
                          10.heightBox,
                        ],
                      ),
                    ).onTap(() {});
                  }),
                ),
              ),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  nearYou.text.fontFamily(bold).size(18).make().marginSymmetric(horizontal: 15),
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Icon(Icons.read_more_outlined, size: 30, color: Purple),
                  ).marginSymmetric(horizontal: 15).onTap(_showFilterBottomSheet),
                ],
              ),
              15.heightBox,

               Column(
                children: List.generate(restaurantList.length, (index) {
                  final restaurant = restaurantList[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    width: screenWidth * 0.9,
                    decoration: BoxDecoration(
                      color: lightCream,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(2, 4),
                        )
                      ],
                    ),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          child: Image.asset(
                            tiffinImgList[index],
                            height: 150,
                            width: context.screenWidth * 0.9,
                            fit: BoxFit.cover,
                          ),
                        ),
                        5.heightBox,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    restaurant['title']
                                        !.text
                                        .fontFamily(semibold)
                                        .size(16)
                                        .color(Purple)
                                        .make(),
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Purple,
                                      size: 20,
                                    ).marginOnly(left: 5, right: 2),
                                    restaurant['distance']
                                        !.text
                                        .fontFamily(regular)
                                        .size(12)
                                        .color(lightPurple)
                                        .make(),
                                  ],
                                ),
                              ),
                              8.widthBox,
                              Row(
                                children: [
                                  restaurant['rating']!.text.color(lightCream).fontFamily(semibold).align(TextAlign.center).make(),
                                  Icon(Icons.star, color: Colors.yellow, size: 18),
                                ],
                              ).box.color(Purple).roundedSM.p8.make(),
                            ],
                          ),
                        ),

                        5.heightBox,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: restaurant['description']
                              !.text
                              .fontFamily(regular)
                              .size(14)
                              .color(Colors.black45)
                              .maxLines(2)
                              .overflow(TextOverflow.ellipsis)
                              .make(),
                        ),
                        10.heightBox,
                        SizedBox(
                          width: context.screenWidth*0.8,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0,bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                veg.text
                                    .black
                                    .fontFamily(regular)
                                    .align(TextAlign.center)
                                    .makeCentered()
                                    .box
                                    .size(50, 30)
                                    .color(lightPurple)
                                    .roundedSM
                                    .makeCentered(),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ).onTap(() {
                    Get.to(()=>RestaurantDetailScreen(index: index,name: restaurantList[index]['title'].toString(),));
                  });
                }),
              ),

              80.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
