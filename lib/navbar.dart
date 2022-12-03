import 'package:flutter/material.dart';

import 'screen/pages/news/pages/home.dart';
import 'screen/pages/chat/chat.dart';
import 'screen/pages/profile/profile.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int currentindex = 0;
  List<Widget> screens = [
    const News(),
    const Chat(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: screens[currentindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.blue[200],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentindex,
        selectedLabelStyle: const TextStyle(fontFamily: 'Poppins'),
        unselectedLabelStyle: const TextStyle(fontFamily: 'Poppins'),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "",
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded),
              label: "",
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_rounded),
              label: "",
              backgroundColor: Colors.transparent),
        ],
        onTap: (int newIndex) {
          setState(() {
            currentindex = newIndex;
          });
        },
      ),
    );
  }
}
