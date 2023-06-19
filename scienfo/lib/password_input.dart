import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordInput extends StatelessWidget {
  final TextEditingController passwordController;

  PasswordInput({Key? key, required this.passwordController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(size:0),
          Pin(size: 50, start: 0.0),
          child: TextField(
            controller: passwordController,
            obscureText: true,    // make password field obfuscated
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 18,
              color: Color(0xffffffff),
              height: 0.85,
            ),
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: TextStyle(
                color: Colors.white
              )
              ),
          ),
        ),
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 1.0, end: -0.9),
          child:
              // Adobe XD layer: 'pass field' (shape)
              SvgPicture.string(
            _svg_yp955,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        
        /*
        Pinned.fromPins(
          Pin(size: 62.0, start: 0.5),
          Pin(size: 28.0, end: 0.0),
          child: Text(
            '……….',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 20,
              color: const Color(0xffffffff),
              height: 0.85,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            softWrap: false,
          ),
        ),
        */
      ],
    );
  }
}

const String _svg_yp955 =
    '<svg viewBox="0.0 42.9 324.3 1.0" ><path transform="translate(0.0, 42.92)" d="M 0 0 L 324.330078125 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
