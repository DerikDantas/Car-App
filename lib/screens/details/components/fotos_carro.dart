import 'package:car_app/constantes.dart';
import 'package:car_app/models/cars.dart';
import 'package:flutter/material.dart';

class FotosCarro extends StatelessWidget {
  final Cars cars;

  const FotosCarro({Key key, @required this.cars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: 200,
      width: size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cars.fotosCarro.length,
          itemBuilder: (context, index) =>
              GalleryBox(fotosCarro: cars.fotosCarro[index])),
    );
  }
}

class GalleryBox extends StatelessWidget {
  final String fotosCarro;

  const GalleryBox({Key key, this.fotosCarro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      width: size.width / 3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
          image: DecorationImage(
              image: AssetImage(fotosCarro), fit: BoxFit.cover)),
    );
  }
}
