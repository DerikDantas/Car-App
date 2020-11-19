import 'package:car_app/constantes.dart';
import 'package:car_app/models/cars.dart';
import 'package:flutter/material.dart';

import 'carsCard.dart';

class Body extends StatelessWidget {
  final Cars cars;
  final Map config;
  const Body({Key key, this.cars, this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Text(
              "Todos Modelos",
              style: TextStyle(color: kTextColor, fontSize: 25),
            ),
          ),
          CarsCard(config: cars.config, cars: cars)
        ],
      ),
    );
  }
}
