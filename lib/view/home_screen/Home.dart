// import 'package:flutter/material.dart';
import 'package:project_management/consts/const.dart';
import 'package:project_management/view/home_screen/home_screen.dart';
import 'package:project_management/view/profile_screen/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentValueIndex = 1;

  final List<Widget> _screens = [
    // cart
    Container(color: Colors.red),
    // home
    HomeScreen(),
    // profile
    ProfileScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _screens[currentValueIndex],
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
            elevation: 0, // Already handled by boxShadow
            selectedItemColor: lightPurple,
            unselectedItemColor: Colors.white,
            selectedFontSize: 16,
            unselectedFontSize: 14,
            onTap: (index) {
              setState(() {
                currentValueIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
