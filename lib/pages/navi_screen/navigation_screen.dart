
import 'package:flutter/material.dart';
import 'package:new_app/consts/colors.dart';
import 'package:new_app/pages/navi_screen/favourite_screen.dart';
import 'package:new_app/pages/navi_screen/home-screen.dart';
import 'package:new_app/pages/navi_screen/notifications_screen.dart';
import 'package:new_app/pages/navi_screen/settings_screen.dart';

import '../../consts/images.dart';
class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;
  final List<Widget> _className2 = [
     HomeScreen(),
    const NotificationScreen(),
     FavouriteScreen(),
     SettingScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: _className2.elementAt(_selectedIndex),
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: bluColor,
    selectedItemColor: Colors.white,
    currentIndex: _selectedIndex,
    onTap: (value) {
    setState(() {
    _selectedIndex = value;
    });
    },
    type: BottomNavigationBarType.fixed,
      unselectedIconTheme: IconThemeData(
        color: Colors.white
      ),

      items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset(home,color: Colors.white,), icon: Image.asset(home),label: "Home"),
          BottomNavigationBarItem(
            activeIcon: Image.asset(notification,color: Colors.white,),
              icon: Image.asset(notification,color: Colors.white,),label: "Notification", ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(favourite,color: Colors.white,),
              icon: Image.asset(favourite),label: "Favourite"),
          BottomNavigationBarItem(
            activeIcon: Image.asset(setting,color: Colors.white,),
              icon: Image.asset(setting),label: "Setting"),
      ],
)   );
  }
}

  