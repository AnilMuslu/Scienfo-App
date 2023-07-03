import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailInput extends StatelessWidget {
  final TextEditingController emailController;

  EmailInput({Key? key, required this.emailController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(size: 0),
          Pin(size: 50.0, start: 0.0),
          child: TextField(
            controller: emailController,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              color: Colors.white,
              height: 1.9,
            ),
            decoration: InputDecoration(
              hintText: 'Enter email address',
              hintStyle: TextStyle(
                color: Colors.white
              )
            ),
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
        
      ],
    );
  }
}

const String _svg_yp955 =
    '<svg viewBox="0.0 42.9 324.3 1.0" ><path transform="translate(0.0, 42.92)" d="M 0 0 L 324.330078125 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
