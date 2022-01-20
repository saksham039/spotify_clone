
import 'package:flutter/material.dart';
import 'package:spotify_clone/home.dart';
import 'songinfo.dart';
import 'likedsongs.dart';
import 'searchpage.dart';
import 'navbar.dart';

void main() {
  runApp(SpotifyClone());
}

class SpotifyClone extends StatefulWidget {
  @override
  _SpotifyCloneState createState() => _SpotifyCloneState();
}

class _SpotifyCloneState extends State<SpotifyClone> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
