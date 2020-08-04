import 'package:flutter/material.dart';

import 'TabNavigationItem.dart';

class Skeleton extends StatefulWidget {
  @override
  _SkeletonState createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) => setState(() => _currentIndex = index),
        selectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          for (final tabItem in TabNavigationItem.items)
            BottomNavigationBarItem(
              icon: tabItem.icon,
              activeIcon: tabItem.activeIcon,
              title: tabItem.title,
            ),
        ],
      ),
    );
  }
}
