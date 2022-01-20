import 'package:flutter/material.dart';
import 'package:spotify_clone/home.dart';
import 'package:spotify_clone/likedsongs.dart';
import 'package:spotify_clone/searchpage.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selected = 0;
  void _itemTapped(int index) {
    setState(() {
      switch (index) {
        case 0:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
          selected = 0;
          break;
        case 1:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SearchPage()));
          selected = 1;
          break;
        case 2:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LikedSongs()));
          selected = 2;
          break;
      }
    });
    //print(_selected);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite), label: 'Liked Songs'),
      ],
      currentIndex: selected,
      onTap: _itemTapped,
    );
  }
}
