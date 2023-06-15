import 'package:flutter/material.dart';

class OptionIcon extends StatelessWidget {
  OptionIcon({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 7.0,
          height: 9.0,
          decoration: BoxDecoration(
            color: const Color(0xff262626),
            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
          ),
        ),
        Transform.translate(
          offset: Offset(0.0, 12.0),
          child: Container(
            width: 7.0,
            height: 9.0,
            decoration: BoxDecoration(
              color: const Color(0xff262626),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(0.0, 25.0),
          child: Container(
            width: 7.0,
            height: 9.0,
            decoration: BoxDecoration(
              color: const Color(0xff262626),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            ),
          ),
        ),
      ],
    );
  }
}
