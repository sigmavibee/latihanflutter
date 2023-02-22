import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/bottom_nav_bar.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

import 'package:flutter_application_1/screens/home/home_page.dart';
import 'package:flutter_application_1/screens/home/pages/book_details.dart';

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
      routes: {
        BottomNavBar.nameRoute: (context) => BottomNavBar(),
        HomePage.nameRoute: (context) => HomePage(),
        BookDetail.nameRoute: (context) => BookDetail(),
      },
    );
  }
}
