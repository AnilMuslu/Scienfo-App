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
          Pin(size: 0),
          Pin(size: 50, start: 0.0),
          child: TextField(
            controller: passwordController,
            obscureText: true, // make password field obfuscated
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 16,
              color: Color(0xffffffff),
              height: 1.9,
            ),
            decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.white)),
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
      ],
    );
  }
}

const String _svg_yp955 =
    '<svg viewBox="0.0 42.9 324.3 1.0" ><path transform="translate(0.0, 42.92)" d="M 0 0 L 324.330078125 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
