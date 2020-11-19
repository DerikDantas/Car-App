import 'package:flutter/material.dart';

import '../../../constantes.dart';

class CarroDetails extends StatelessWidget {
  final Map config;

  const CarroDetails({Key key, this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFF2D63B1)),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            child: Text(
              config['modelo'],
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Image.asset(
                config['imageCar'],
                fit: BoxFit.contain,
              )),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "BATERIA",
                      style: TextStyle(color: Colors.white30, fontSize: 15),
                    ),
                    Text(
                      config['battery'],
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "0-100KM/H",
                      style: TextStyle(color: Colors.white30, fontSize: 15),
                    ),
                    Text(
                      config['zeroCem'],
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "MAX SPEED",
                      style: TextStyle(color: Colors.white30, fontSize: 15),
                    ),
                    Text(
                      config['maxSpeed'],
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
