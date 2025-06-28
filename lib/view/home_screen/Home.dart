import 'package:project_management/consts/const.dart';

import '../../room_module/favorite_screen/favorite_screen.dart';
import '../notification/notification_screen.dart';

// Dummy screens for Room and Ride (replace with your actual screens)

class Home extends StatefulWidget {
  final int currentValueIndex;
  const Home({super.key, this.currentValueIndex = 1});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentValueIndex = 1;
  late String selectedApp;

  @override
  void initState() {
    super.initState();
    currentValueIndex = widget.currentValueIndex;
    selectedApp = appList[1];
  }

  @override
  @override
  Widget build(BuildContext context) {
    // Pick screen list based on selected app
    final screenList = selectedApp == appList[0]
        ? screensRoom
        : selectedApp == appList[1]
            ? screensRoti
            : screensRide;

    final showAppBar =
        currentValueIndex == 1; // Only show AppBar on Home screen

    return Scaffold(
      extendBody: true,
      appBar: showAppBar
          ? AppBar(
        automaticallyImplyLeading: false,

        iconTheme: IconThemeData(
          color: selectedApp == appList[0]? orange :selectedApp == appList[1]?Purple:lightPurple,
        ),
                     backgroundColor: selectedApp == appList[0]? lightYellow :selectedApp == appList[1]?lightestPurple:Purple,
              title: DropdownButton<String>(
                value: selectedApp,
                icon: Icon(Icons.arrow_drop_down,
                    color: selectedApp == appList[0]? orange :selectedApp == appList[1]?Purple:lightPurple, ),
                dropdownColor: Colors.white,
                underline: const SizedBox(),
                style: TextStyle(
                    color: selectedApp == appList[0]? orange :selectedApp == appList[1]?Purple:lightPurple,fontSize: 18, fontFamily: bold),
                items: appList.map((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: item.text.make(),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedApp = value!;
                    currentValueIndex =
                        1; // Reset to home tab when changing app
                  });
                },
              ).paddingSymmetric(horizontal: 10).box.roundedLg.make(),
              actions: [
                 selectedApp == appList[0]?
                     Icon(Icons.favorite_border_outlined).marginSymmetric(horizontal: 10).onTap(() {Get.to(() => FavouritePropertiesScreen()); })
                     : selectedApp == appList[1]?
                 Icon(Icons.notifications_active_outlined)
                    .marginSymmetric(horizontal: 10)
                    .onTap(() {
                  Get.to(() => NotificationScreen());
                })
                     :
                     Icon(Icons.favorite_border_outlined).marginSymmetric(horizontal: 10).onTap(() {}),
              ],
            )
          : null,
      body: screenList[currentValueIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: selectedApp == appList[0]? orange :selectedApp == appList[1]?Purple:lightPurple,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: selectedApp == appList[0]? orange :selectedApp == appList[1]?Purple:lightPurple,
            currentIndex: currentValueIndex,
            elevation: 0,
            selectedItemColor: selectedApp == appList[0]? lightYellow :selectedApp == appList[1]?lightestPurple:lightPurple,
            unselectedItemColor: Colors.white,
            selectedFontSize: 16,
            unselectedFontSize: 14,
            onTap: (index) {
              setState(() {
                currentValueIndex = index;
              });
            },
            items: selectedApp == appList[0]
                ? roombottumNavbar
                : selectedApp == appList[1]
                    ? rotibottumNavbar
                    : ridebottumNavbar,
          ),
        ),
      ),
    );
  }
}
