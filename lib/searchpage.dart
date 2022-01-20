import 'package:flutter/material.dart';
import 'navbar.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HeadText(head: 'Search'),
                SizedBox(
                  height: 30.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Search',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.start,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CultureInfo(name: 'Pop', coloor: 0xfff77f00),
                          CultureInfo(name: 'Punjabi', coloor: 0xff003049),
                          CultureInfo(name: 'Hip hop', coloor: 0xfffcbf49),
                          CultureInfo(name: 'Dance', coloor: 0xffeae2b7),
                          CultureInfo(name: '1', coloor: 0xffe63946),
                          CultureInfo(name: '2', coloor: 0xfffca311),
                          CultureInfo(name: '3', coloor: 0xff0077b6),
                          CultureInfo(name: '4', coloor: 0xfff72585),
                          CultureInfo(name: '5', coloor: 0xffc9184a),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CultureInfo(name: '1', coloor: 0xffe63946),
                          CultureInfo(name: '2', coloor: 0xfffca311),
                          CultureInfo(name: '3', coloor: 0xff0077b6),
                          CultureInfo(name: '4', coloor: 0xfff72585),
                          CultureInfo(name: 'Dance', coloor: 0xffeae2b7),
                          CultureInfo(name: '5', coloor: 0xffc9184a),
                          CultureInfo(name: 'Pop', coloor: 0xfff77f00),
                          CultureInfo(name: 'Punjabi', coloor: 0xff003049),
                          CultureInfo(name: 'Hip hop', coloor: 0xfffcbf49),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}

class CultureInfo extends StatelessWidget {
  CultureInfo({required this.name, required this.coloor});
  String name;
  int coloor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10.0),
        color: Color(coloor),
      ),
      child: Row(
        children: [
          Text(
            name,
            style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
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
          fontSize: 40.0,
        ),
      ),
    );
  }
}
