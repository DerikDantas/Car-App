import 'package:flutter/material.dart';

import '../../../constantes.dart';

class ModelAndImg extends StatelessWidget {
  final Map config;

  const ModelAndImg({Key key, this.config}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            config['modelo'],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            height: size.height / 5.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(config['imageCar']))),
          ),
        ],
      ),
    );
  }
}
