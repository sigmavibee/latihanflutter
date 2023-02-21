import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/bottom_nav_bar.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

void main() {
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    if (kReleaseMode) exit(1);
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ebook App',
      home: BottomNavBar(),
    );
  }
}
