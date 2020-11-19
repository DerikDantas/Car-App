import 'package:flutter/material.dart';
import 'package:car_app/constantes.dart';

class SelectYourCar extends StatelessWidget {
  const SelectYourCar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Selecione seu carro',
            style: TextStyle(color: kTextColor, fontSize: 25),
          ),
          Text(
            'Selecionar pelo modelo, configuração, marca.',
            style: TextStyle(color: kTextLightColor, fontSize: 15),
          )
        ],
      ),
    );
  }
}
