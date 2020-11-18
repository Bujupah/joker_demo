import 'package:flutter/material.dart';
import 'package:joker/src/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokeriste',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}