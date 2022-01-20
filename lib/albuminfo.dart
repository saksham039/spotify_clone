

import 'package:flutter/material.dart';

class AlbumInfo extends StatelessWidget {
  AlbumInfo(
      {required this.albumName,
      required this.ArtistName,
      required this.topColor,
      required this.bottomcolor,
      required this.buttonColor});
  String albumName;
  String ArtistName;
  int topColor;
  int bottomcolor;
  int buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(topColor), Color(bottomcolor)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: <Widget>[
          Text(
            albumName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          Text(
            ArtistName,
            style: const TextStyle(
              fontSize: 15.0,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Color(buttonColor)),
            ),
            onPressed: () {},
            child: const Icon(Icons.play_arrow_rounded),
          ),
        ],
      ),
    );
  }
}
