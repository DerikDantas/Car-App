import 'package:flutter/material.dart';

import '../../../constantes.dart';

class BtnTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      width: size.width,
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              boxShadow: [kDefaultShadow],
              color: Color(0xFF2D63B1),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Fazer teste drive",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
