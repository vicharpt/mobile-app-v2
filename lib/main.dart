import 'package:flutter/material.dart';
import 'package:vicharpt/pages/HomePage.dart';
import 'package:vicharpt/pages/MusicPage.dart';
import 'package:vicharpt/pages/NewsPage.dart';
import 'package:vicharpt/pages/MusicSavedPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "musicPage": (context) => MusicPage(),
        "musicSavedPage": (context) => MusicSavedPage(),
        "newsPage":(context) => NewsPage()
      },
    );
  }
}
