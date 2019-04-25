import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarState();
  }
}

class _BottomNavigationBarState extends State<BottomNavigationBarWidget> {
  BottomNavigationBarItem buildItem(IconData icon, String text) {
    return BottomNavigationBarItem(icon: Icon(icon), title: Text(text));
  }

  int _currentIndex = 0;

  void _onTabHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        onTap: _onTabHandler,
        items: [
          buildItem(Icons.explore, "Explore"),
          buildItem(Icons.history, "history"),
          buildItem(Icons.list, "List"),
          buildItem(Icons.person, "My")
        ]);
  }
}
