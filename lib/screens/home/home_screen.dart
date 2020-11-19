import 'package:car_app/constantes.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    leading: Icon(Icons.menu),
    title: Text(
      'Home',
    ),
    centerTitle: false,
  );
}
