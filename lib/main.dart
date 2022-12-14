import 'package:audio_player/pages/HomePage.dart';
import 'package:audio_player/pages/MusicPage.dart';
import 'package:audio_player/pages/PlaylistPage.dart';
import 'package:flutter/material.dart ';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "PlaylistPage": (context) => PlaylistPage(),
        "MusicPage": (context) => MusicPage(),
      },
    );
  }
}
