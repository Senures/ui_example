import 'package:flutter/material.dart';
import 'package:ui_instagram/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3:true,
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}


