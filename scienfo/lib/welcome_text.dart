import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class WelcomeText extends StatelessWidget {
  WelcomeText({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 3.0, end: 0.0),
          Pin(size: 40.0, start: 0.0),
          child: Text(
            'Welcome to,',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 31,
              color: const Color(0xffffffff),
              height: 0.3548387096774194,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            softWrap: false,
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: SizedBox(
            width: 130.0,
            height: 50.0,
            child: Text(
              'Scienfo',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 38,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                height: 0.34210526315789475,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
        ),
      ],
    );
  }
}
