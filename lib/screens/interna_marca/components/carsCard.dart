import 'package:car_app/models/cars.dart';
import 'package:car_app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

import '../../../constantes.dart';
import 'config_car.dart';
import 'model_img.dart';

class CarsCard extends StatelessWidget {
  final List config;
  final Cars cars;
  const CarsCard({Key key, this.config, this.cars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Stack(children: <Widget>[
        ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: config.length,
            itemBuilder: (context, index) => CarsCardBox(
                config: config[index],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                                cars: cars,
                                config: config[index],
                              )));
                })),
      ]),
    );
  }
}

class CarsCardBox extends StatelessWidget {
  final Map config;
  final Function press;

  const CarsCardBox({Key key, this.config, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: press,
      child: Container(
        height: size.height / 3,
        margin: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [kDefaultShadow]),
        child: Column(
          children: <Widget>[
            ModelAndImg(
              config: config,
            ),
            ConfigCar(
              config: config,
            )
          ],
        ),
      ),
    );
  }
}
