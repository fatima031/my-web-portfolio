import 'package:flutter/material.dart';
import 'package:portfolio/Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "Fatima Khanani",
      home: const Home_page(),
    );
  }
}
