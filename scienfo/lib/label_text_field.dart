import 'package:flutter/material.dart';

class LabelTextField extends StatelessWidget {
  LabelTextField({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          '#Sustainable Development',
          style: TextStyle(
            fontFamily: 'Algerian',
            fontSize: 19,
            color: const Color(0xff000000),
            height: 1.0526315789473684,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          softWrap: false,
        ),
      ],
    );
  }
}
