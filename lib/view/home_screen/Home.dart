import 'package:project_management/consts/const.dart';

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
    selectedApp = appList[0];
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

    final showAppBar = currentValueIndex == 1; // Only show AppBar on Home screen

    return Scaffold(
      extendBody: true,
      appBar: showAppBar
          ? AppBar(
        title: DropdownButton<String>(
          value: selectedApp,
          icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
          dropdownColor: Colors.white,
          underline: const SizedBox(),
          style: TextStyle(color: Purple, fontSize: 18, fontFamily: bold),
          items: appList.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: item.text.make(),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedApp = value!;
              currentValueIndex = 1; // Reset to home tab when changing app
            });
          },
        ),
        leading: const Icon(Icons.location_on_outlined),
        actions: [
          const Icon(Icons.notifications_active_outlined)
              .marginSymmetric(horizontal: 10)
              .onTap(() {Get.to(()=>NotificationScreen());}),
        ],
      )
          : null,
      body: screenList[currentValueIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Purple,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Purple,
            currentIndex: currentValueIndex,
            elevation: 0,
            selectedItemColor: lightPurple,
            unselectedItemColor: Colors.white,
            selectedFontSize: 16,
            unselectedFontSize: 14,
            onTap: (index) {
              setState(() {
                currentValueIndex = index;
              });
            },
            items: selectedApp == appList[0]?roombottumNavbar:selectedApp == appList[1]?rotibottumNavbar:ridebottumNavbar,
          ),
        ),
      ),
    );
  }

}
