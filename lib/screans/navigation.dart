import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './homescreans/home.dart';
import './homescreans/explore.dart';
import './homescreans/my_courses.dart';
import './homescreans/account.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  List<Widget> pages = const [Home(), Explore(), MyCourses(), Account()];
  int tabIndex = 0;
  void onTap(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        unselectedItemColor: Colors.black87,
        elevation: 0,
        currentIndex: tabIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.dashboard_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
          ),
          BottomNavigationBarItem(
            label: 'Courses',
            icon: FaIcon(FontAwesomeIcons.circlePlay),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: FaIcon(FontAwesomeIcons.person),
          ),
        ],
      ),
    );
  }
}
