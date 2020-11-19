import 'package:flutter/material.dart';

import '../../../constantes.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
    this.onChanged,
  }) : super(key: key);
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(15)),
      child: TextField(
        onChanged: onChanged,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'Procurar',
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            hintStyle: TextStyle(color: Colors.white)),
      ),
    );
  }
}
