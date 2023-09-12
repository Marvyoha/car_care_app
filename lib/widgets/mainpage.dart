// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'Main page widgets/subWidgets/For Car Page/SavedCarsEmpty.dart';
import 'Main page widgets/homepage.dart';
import 'Main page widgets/menupage.dart';
import 'Main page widgets/rewardpage.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const SavedCarsEmpty(),
    const RewardPage(),
    const MenuPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.textIn,
        curveSize: 0,
        backgroundColor: const Color.fromARGB(255, 249, 249, 249),
        activeColor: const Color(0xFF1E2C5C),
        color: Colors.grey,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.car_repair, title: 'My Car'),
          TabItem(icon: Icons.star, title: 'Rewards'),
          TabItem(icon: Icons.library_books, title: 'Menu'),
        ],
        initialActiveIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
