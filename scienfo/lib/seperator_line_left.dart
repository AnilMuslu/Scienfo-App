import 'package:flutter/material.dart';

class SeperatorLineLeft extends StatelessWidget {
  SeperatorLineLeft({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 205.0,
          height: 2.0,
          color: const Color(0xff707070),
        ),
      ],
    );
  }
}
