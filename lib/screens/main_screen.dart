import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (idx) {
            setState(() {
              pageIdx = idx;
            });
          },
          currentIndex: pageIdx,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromARGB(255, 116, 30, 159),
          unselectedItemColor: Colors.black,
          backgroundColor: null,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Ionicons.home,
                size: 30,
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
                icon: Icon(
                  Ionicons.heart_outline,
                  size: 30,
                ),
                label: 'Wishlist'),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/group.png', // Replace with your custom image path
                width: 50,
                height: 50,
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.dining_outlined,
                  size: 30,
                ),
                label: 'Orders'),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_3_outlined,
                  size: 30,
                ),
                label: 'Profile')
          ]),
      body: pages[pageIdx],
    );
  }
}
