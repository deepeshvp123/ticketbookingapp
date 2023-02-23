import 'package:flutter/material.dart';
import 'package:ticketbookingapp/screens/bottom_bar.dart';
import 'package:ticketbookingapp/utils/app_style.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: BottomBar(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: primary,
    ),
  ));
}

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material();
  }
}
