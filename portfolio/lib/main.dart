import 'package:flutter/material.dart';
import 'package:portfolio/views/portfolio_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Utkarsh-Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent
      ),
      home: const PortFolioPage()
    );
  }
}

