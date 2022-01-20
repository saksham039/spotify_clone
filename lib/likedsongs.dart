import 'package:flutter/material.dart';
import 'package:spotify_clone/home.dart';
import 'songinfo.dart';
import 'navbar.dart';

class LikedSongs extends StatefulWidget {
  @override
  _LikedSongsState createState() => _LikedSongsState();
}

class _LikedSongsState extends State<LikedSongs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text('Liked Songs'),
            backgroundColor: Colors.black,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.play_arrow_rounded),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SongInfo(songName: 'Sugar', singer: 'Maroon-5'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(songName: 'Cold', singer: 'Maroon-5'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(
                    songName: 'If You Close Your Eyes', singer: 'Nate Boss'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(songName: 'Take Me To Chruch', singer: 'Hozier'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(
                    songName: 'No Child Left Behind', singer: 'Kanye West'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(songName: 'Payphone', singer: 'Maroon-5'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(
                    songName: 'Godzilla (feat. Juice WRLD', singer: 'Eminem'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(songName: 'Someone To You', singer: 'Banners'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(songName: 'Cradles', singer: 'Sub Urban'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(songName: 'Sucker', singer: 'Jonas Brothers'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(songName: 'Hope', singer: 'XXXTENTAION'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(songName: 'WITHOUT YOU', singer: 'The Kid Laroi'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(songName: 'Often', singer: 'The Weeknd'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(songName: 'Blinding Lights', singer: 'The Weeknd'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(songName: 'Not Afraid', singer: 'Eminem'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(songName: 'Heartless', singer: 'Kanye West'),
                const SizedBox(
                  height: 10.0,
                ),
                SongInfo(songName: 'idfc', singer: 'blackbeer'),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
