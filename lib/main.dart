import 'package:car_app/constantes.dart';
import 'package:car_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car App',
      theme: ThemeData(primaryColor: kPrimaryColor, accentColor: kPrimaryColor),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
