import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Cart',
        style: semiBoldText20,
      )),
    );
  }
}
