import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class user_image extends StatelessWidget {
  user_image({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(14.9, 0.0),
          child: SizedBox(
            width: 120.0,
            height: 122.0,
            child: Stack(
              children: <Widget>[
                Container(
                  width: 120.0,
                  height: 122.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/profile_user_photo.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 19.0, end: 0.0),
          child: Text(
            'Welcome to SCIENFO',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              color: const Color(0xff000000),
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
