import 'package:car_app/models/cars.dart';
import 'package:flutter/material.dart';

class Modelo extends StatelessWidget {
  const Modelo({
    Key key,
    @required this.cars,
  }) : super(key: key);

  final Cars cars;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 20,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cars.modelo.length,
          itemBuilder: (context, index) =>
              ModeloList(modelo: cars.modelo[index])),
    );
  }
}

class ModeloList extends StatelessWidget {
  final String modelo;

  const ModeloList({Key key, this.modelo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        modelo + " / ",
        style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5)),
      ),
    );
  }
}
