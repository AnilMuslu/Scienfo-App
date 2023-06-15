import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';

class scienfo_logo extends StatelessWidget {
  scienfo_logo({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 84.0, start: 0.0),
          child: Text(
            'SCIENFO',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 64,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w700,
              height: 0.34375,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            softWrap: false,
          ),
        ),
        Align(
          alignment: Alignment(-0.007, 1.0),
          child:
              // Adobe XD layer: 'Stem logo png' (shape)
              BlendMask(
            blendMode: BlendMode.darken,
            child: Container(
              width: 125.0,
              height: 131.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      const AssetImage('assets/images/scienfo_logo_image.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(56.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
