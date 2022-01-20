import 'package:flutter/material.dart';

class Recentinfo extends StatelessWidget {
  Recentinfo({required this.recentName});
  String recentName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.grey, Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children:  <Widget>[
          Icon(Icons.play_arrow_rounded),
          Text(
            recentName,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
