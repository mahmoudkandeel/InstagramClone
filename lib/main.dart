import 'package:flutter/material.dart';
import 'package:instgram/insta_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.black, fontFamily: "Aveny")),
        textTheme: TextTheme(title: TextStyle(color: Colors.black)),
      ),
      home: new InstaHome(),
    );
  }
}
