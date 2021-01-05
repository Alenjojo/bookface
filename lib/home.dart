import 'package:bookface/Pages/Inbox.dart';
import 'package:bookface/Pages/Posts.dart';
import 'package:bookface/Pages/Profile.dart';
import 'package:bookface/Pages/Saved.dart';
import 'package:bookface/widgets/bottom_navigation_items.dart';
import 'package:flutter/material.dart';

import 'Pages/Home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin<HomePage> {
  int _currentIndex = 0;
  final List<Widget> screens = [Home(), Saved(), Posts(), Inbox(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      // SafeArea(
      //   top: false,
      //   child: IndexedStack(
      //     index: _currentIndex,
      //     children: allItems.map<Widget>((BottomNavigationItem item) {
      //       return BottomNavigationView(item: item);
      //     }).toList(),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: allItems.map((BottomNavigationItem item) {
          return BottomNavigationBarItem(
              icon: Icon(item.icon),
              backgroundColor: item.color,
              title: Text(item.title));
        }).toList(),
      ),
    );
  }
}
