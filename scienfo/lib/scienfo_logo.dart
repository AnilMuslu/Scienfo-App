import 'package:flutter/material.dart';
import 'package:adobe_xd/blend_mask.dart';

class ScienfoLogo extends StatelessWidget {
  ScienfoLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'SCIENFO',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 50,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w700,
              height: 0.34375,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            softWrap: false,
          ),
          SizedBox(height: 20), 
          // Adobe XD layer: 'Stem logo png' (shape)
          BlendMask(
            blendMode: BlendMode.srcOver,
            child: Container(
              width: 125.0,
              height: 131.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/scienfoLogo2.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(56.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
