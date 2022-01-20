import 'package:flutter/material.dart';
import 'albuminfo.dart';
import 'recentinfo.dart';
import 'likedsongs.dart';
import 'searchpage.dart';
import 'navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const TopBar(),
                const SizedBox(
                  height: 20.0,
                ),
                HeadText(head: 'Recents'),
                Row(
                  children: const <Widget>[
                    Expanded(
                      child: RecentPlay(),
                    ),
                    Expanded(
                      child: RecentPlaytwo(),
                    ),
                  ],
                ),
                HeadText(head: 'Top Albums'),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: TopAlbums(),
                ),
                HeadText(head: 'Made for Saksham Wadhwa'),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: MadeforMe(),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar:
            BottomBar(),
      ),
    );
  }
}



class MadeforMe extends StatelessWidget {
  const MadeforMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AlbumInfo(
            albumName: 'Judaa 3',
            ArtistName: 'Amrinder Gill',
            topColor: 0xff9a8c98,
            bottomcolor: 0xff22223b,
            buttonColor: 0xff22223b),
        AlbumInfo(
            albumName: 'Daily Mix 1',
            ArtistName: 'Various artists',
            topColor: 0xff9a8c98,
            bottomcolor: 0xff22223b,
            buttonColor: 0xff22223b),
        AlbumInfo(
            albumName: 'Daily Mix 2',
            ArtistName: 'Lil nas ,, Jay-Z',
            topColor: 0xff9a8c98,
            bottomcolor: 0xff22223b,
            buttonColor: 0xff22223b),
        AlbumInfo(
            albumName: 'Daily Mix 3',
            ArtistName: 'A3',
            topColor: 0xff9a8c98,
            bottomcolor: 0xff22223b,
            buttonColor: 0xff22223b),
      ],
    );
  }
}

class TopAlbums extends StatelessWidget {
  const TopAlbums({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AlbumInfo(
            albumName: 'Album 1',
            ArtistName: 'A1',
            topColor: 0xff52b788,
            bottomcolor: 0xff000000,
            buttonColor: 0xff2d6a4f),
        AlbumInfo(
            albumName: 'Album 2',
            ArtistName: 'A2',
            topColor: 0xff52b788,
            bottomcolor: 0xff000000,
            buttonColor: 0xff2d6a4f),
        AlbumInfo(
            albumName: 'Album 3',
            ArtistName: 'A3',
            topColor: 0xff52b788,
            bottomcolor: 0xff000000,
            buttonColor: 0xff2d6a4f),
        AlbumInfo(
            albumName: 'Album 4',
            ArtistName: 'A4',
            topColor: 0xff52b788,
            bottomcolor: 0xff000000,
            buttonColor: 0xff2d6a4f),
      ],
    );
  }
}

class RecentPlaytwo extends StatelessWidget {
  const RecentPlaytwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Recentinfo(recentName: 'Punjabi 101'),
        Recentinfo(recentName: 'Heartless'),
        Recentinfo(recentName: 'The Nights'),
      ],
    );
  }
}

class RecentPlay extends StatelessWidget {
  const RecentPlay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Recentinfo(recentName: 'Run'),
        Recentinfo(recentName: 'AP Dhillon'),
        Recentinfo(recentName: 'Liked Songs'),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        Text(
          'Hi There!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35.0,
          ),
        ),
        Icon(Icons.notifications),
        Icon(Icons.history),
        Icon(Icons.settings),
      ],
    );
  }
}

class HeadText extends StatelessWidget {
  HeadText({required this.head});
  String head;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        head,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
      ),
    );
  }
}
