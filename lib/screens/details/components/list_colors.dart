import 'package:flutter/material.dart';

import '../../../constantes.dart';

class ListCores extends StatelessWidget {
  const ListCores({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Cores disponíveis:",
            style: TextStyle(fontSize: 20),
          ),
          Container(
              child: Row(
            children: <Widget>[
              ColorDot(
                fillColor: Color(0xFFA10314),
              ),
              ColorDot(
                fillColor: Color(0xFF000000),
              ),
              ColorDot(
                fillColor: Color(0xFF707070),
              ),
              ColorDot(
                fillColor: Colors.indigo,
              )
            ],
          ))
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final bool isSelected;
  final Color fillColor;

  const ColorDot({Key key, this.isSelected = false, this.fillColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 3),
      padding: EdgeInsets.all(6),
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Color(0xFF9FC0E1) : Colors.transparent,
      ),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: fillColor),
      ),
    );
  }
}
