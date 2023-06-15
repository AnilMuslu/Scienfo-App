import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Likes extends StatelessWidget {
  Likes({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: 375.0,
          height: 487.0,
          child: Stack(
            children: <Widget>[
              Container(
                width: 187.0,
                height: 1.0,
                color: const Color(0xff707070),
              ),
              Transform.translate(
                offset: Offset(0.0, 1.0),
                child: Container(
                  width: 373.0,
                  height: 0.0,
                  color: const Color(0xff707070),
                ),
              ),
              Transform.translate(
                offset: Offset(0.0, 1.0),
                child: Container(
                  width: 123.0,
                  height: 486.0,
                  color: const Color(0xfffdb25c),
                ),
              ),
              Transform.translate(
                offset: Offset(249.9, 1.5),
                child: Container(
                  width: 125.0,
                  height: 486.0,
                  color: const Color(0xfffdb25c),
                ),
              ),
              Transform.translate(
                offset: Offset(124.9, 1.5),
                child: SizedBox(
                  width: 123.0,
                  height: 486.0,
                  child: SvgPicture.string(
                    _svg_l9msyo,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

const String _svg_l9msyo =
    '<svg viewBox="124.9 41.9 123.0 485.5" ><path transform="translate(124.88, 41.87)" d="M 0 0 L 122.9846801757812 0 L 122.9846801757812 485.5082397460938 L 0 485.5082397460938 L 0 126.5146942138672 L 0 0 Z" fill="#fdb25c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
