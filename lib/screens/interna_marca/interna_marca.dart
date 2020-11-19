import 'package:car_app/models/cars.dart';
import 'package:flutter/material.dart';

import '../../constantes.dart';
import 'components/body.dart';

class MarcaScreen extends StatelessWidget {
  final Cars cars;

  const MarcaScreen({Key key, this.cars}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(cars: cars),
      appBar: buildAppBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Image.asset(
        cars.icon,
        width: 45,
      ),
    );
  }
}
