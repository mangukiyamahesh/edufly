import 'package:edufly/view/home_page.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List list = [
    HomePage(),
    Center(
      child: Text('Favourite'),
    ),
    Center(
      child: Text('Notification'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: select,
        // showUnselectedLabels: true,
        unselectedItemColor: Color(0xff9195B2),
        selectedItemColor: Color(0xff143ED2),
        onTap: (value) {
          setState(
            () {
              select = value;
            },
          );
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Today'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active_outlined),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      body: list[select],
    );
  }
}
