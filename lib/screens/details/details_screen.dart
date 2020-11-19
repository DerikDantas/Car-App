import 'package:car_app/models/cars.dart';
import 'package:car_app/screens/details/components/body.dart';
import 'package:flutter/material.dart';

import '../../constantes.dart';

class DetailsScreen extends StatelessWidget {
  final Cars cars;
  final Map config;

  const DetailsScreen({Key key, this.cars, this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(cars: cars, config: config),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: CloseButton(
        color: Colors.white,
      ),
      title: Image.asset(
        cars.icon,
        width: 45,
      ),
      centerTitle: true,
      backgroundColor: Color(0xFF2D63B1),
    );
  }
}
