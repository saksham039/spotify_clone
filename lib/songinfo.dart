import 'package:flutter/material.dart';

class SongInfo extends StatelessWidget {
  SongInfo({required this.songName, required this.singer});
  String songName;
  String singer;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.play_arrow_rounded),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text(
                songName,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(singer),
            ],
          )
        ],
      ),
    );
  }
}
