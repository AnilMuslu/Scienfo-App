import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailInput extends StatelessWidget {
  EmailInput({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(size: 35.0, start: 0.5),
          Pin(size: 19.0, start: 0.0),
          child: Text(
            'Email',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              color: const Color(0xffffffff),
              height: 1.2142857142857142,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            softWrap: false,
          ),
        ),
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 1.0, end: -1.0),
          child:
              // Adobe XD layer: 'email field' (shape)
              SvgPicture.string(
            _svg_yp955,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 150.0, start: 0.5),
          Pin(size: 19.0, end: 3.9),
          child: Text(
            'anillmusluu@gmail.com',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              color: const Color(0xffffffff),
              height: 1.2142857142857142,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            softWrap: false,
          ),
        ),
      ],
    );
  }
}

const String _svg_yp955 =
    '<svg viewBox="0.0 42.9 324.3 1.0" ><path transform="translate(0.0, 42.92)" d="M 0 0 L 324.330078125 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
