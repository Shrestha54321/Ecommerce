import 'package:app1/homepage.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app1',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: homepage(),
    );
  }
}

