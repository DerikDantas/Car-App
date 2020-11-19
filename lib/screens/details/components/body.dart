import 'package:car_app/constantes.dart';
import 'package:car_app/models/cars.dart';
import 'package:car_app/screens/details/components/carro_details.dart';
import 'package:flutter/material.dart';

import 'btn_drive.dart';
import 'fotos_carro.dart';
import 'list_colors.dart';

class Body extends StatelessWidget {
  final Cars cars;
  final Map config;

  const Body({Key key, this.cars, this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            CarroDetails(config: config),
            ListCores(),
            FotosCarro(cars: cars),
            BtnTest()
          ],
        ),
      ),
    );
  }
}
