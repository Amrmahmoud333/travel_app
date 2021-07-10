import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
        primaryColor: Color(0xFFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
      ),
      home: HomeScreen(),
    );
  }
}
