import 'package:flutter/material.dart';

import '../../../constantes.dart';

class ConfigCar extends StatelessWidget {
  final Map config;

  const ConfigCar({Key key, this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Icon(Icons.battery_charging_full),
                Text(
                  config['battery'],
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Icon(Icons.alarm),
                Text(
                  config['zeroCem'],
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Icon(Icons.shutter_speed),
                Text(
                  config['maxSpeed'],
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
