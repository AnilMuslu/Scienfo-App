import 'package:flutter/material.dart';

class FavouritesContentField extends StatelessWidget {
  FavouritesContentField({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(),
        Transform.translate(
          offset: Offset(0.2, 198.2),
          child: Container(
            width: 410.0,
            height: 3.0,
            color: const Color(0xffffffff),
          ),
        ),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
      ],
    );
  }
}
