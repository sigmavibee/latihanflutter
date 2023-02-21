import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'User',
        style: semiBoldText20,
      )),
    );
  }
}
