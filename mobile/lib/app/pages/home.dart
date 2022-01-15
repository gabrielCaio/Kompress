import 'package:flutter/material.dart';
import 'package:kompress/app/pages/home_page.dart';
import 'package:kompress/app/pages/my_pantry.dart';
import 'package:kompress/app/pages/notifications.dart';
import 'package:kompress/app/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final List<Widget> _screen = [
    const HomePage(),
    const MyPantry(),
    const Notifications(),
    const Profile(),
  ];

  void _onPageChanged(int index) {}

  void _onItemTap(int index) {
    _pageController.jumpToPage(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),

      // Bottom bar
      bottomNavigationBar: BottomNavigationBar(
        // Props of navigation bar

        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) => _onItemTap(index),
        currentIndex: _currentIndex,
        backgroundColor: const Color(0x7B61FFFF),

        // Content of Navigation bar

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.kitchen, size: 30),
            label: "MyPantry",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: 30),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, size: 30),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
