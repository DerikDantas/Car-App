import 'package:car_app/constantes.dart';
import 'package:car_app/models/cars.dart';
import 'package:car_app/screens/interna_marca/interna_marca.dart';
import 'package:flutter/material.dart';

import 'modelo.dart';

class MarcasCard extends StatelessWidget {
  const MarcasCard({Key key, this.cars, this.press}) : super(key: key);

  final Cars cars;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MarcaScreen(
                    cars: cars,
                  ))),
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
        height: 70,
        child: Row(
          children: <Widget>[
            Container(
              height: 70,
              width: 70,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(
                cars.icon,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "${cars.marca}",
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                  Modelo(cars: cars),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
