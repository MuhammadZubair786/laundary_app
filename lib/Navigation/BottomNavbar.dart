// import 'package:animatedbottomnavbar/screens/screen1.dart';
// import 'package:animatedbottomnavbar/screens/screen2.dart';
// import 'package:animatedbottomnavbar/screens/screen3.dart';
import 'package:bus_tracking_app/MainScreen/Home.dart';
import 'package:bus_tracking_app/MainScreen/ProfileScreen.dart';
import 'package:bus_tracking_app/MainScreen/Tracking.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List Screens = [
   HomePage(),
   TrackingScreen(),
   LSProfileFragment(),

  ];
  int _selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color.fromARGB(255, 184, 182, 182),
      bottomNavigationBar: CurvedNavigationBar(
        index:  _selectedIndex,
        backgroundColor: Color.fromARGB(0, 248, 246, 246),
        color: Color.fromARGB(255, 218, 218, 218),
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color:Color.fromARGB(255, 4, 72, 128),
          ),
          Icon(
            Icons.location_on,
            size: 30,
            color:Color.fromARGB(255, 4, 72, 128),

          ),
          Icon(
            Icons.person,
            size: 30,
            color:Color.fromARGB(255, 4, 72, 128),

          ),
        ],
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Screens[_selectedIndex],
    );
  }
}