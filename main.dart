import 'package:flutter/material.dart';
import 'Screens/input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF131313),
        scaffoldBackgroundColor: Color(0xFF131313),
      ),
      home: InputPage(),
    );
  }
}