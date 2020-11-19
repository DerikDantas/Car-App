import 'package:car_app/constantes.dart';
import 'package:car_app/models/cars.dart';
import 'package:car_app/screens/home/components/marcas_card.dart';
import 'package:car_app/screens/home/components/searchBox.dart';
import 'package:car_app/screens/home/components/select_your_Car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SelectYourCar(),
          SearchBox(),
          Expanded(
              child: Stack(
            children: <Widget>[
              ListView.builder(
                  itemCount: cars.length,
                  itemBuilder: (context, index) => MarcasCard(
                        cars: cars[index],
                      )),
            ],
          )),
        ],
      ),
    );
  }
}
