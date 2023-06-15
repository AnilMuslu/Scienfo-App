import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './scienfo_logo.dart';

class ScienfoSplashPage extends StatelessWidget {
  ScienfoSplashPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x2bbc088f),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 76.0, end: 76.0),
            Pin(size: 215.0, middle: 0.3471),
            child:
                // Adobe XD layer: 'ScienfoLogo' (component)
                scienfo_logo(),
          ),
        ],
      ),
    );
  }
}
