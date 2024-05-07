import 'package:flutter/material.dart';
import 'package:vicharpt/pages/HomePage.dart';
import 'package:vicharpt/pages/PlayListPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "playlistPage": (context) => PlayListPage()
      },
    );
  }
}
