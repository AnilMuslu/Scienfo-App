import 'package:flutter/material.dart';

class PrimarySchoolButton extends StatelessWidget {
  PrimarySchoolButton({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 88.0,
          height: 28.0,
          decoration: BoxDecoration(
            color: const Color(0xfff36d7d),
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(width: 2.0, color: const Color(0xffffffff)),
            boxShadow: [
              BoxShadow(
                color: const Color(0xa0c9274d),
                offset: Offset(0, 8),
                blurRadius: 24,
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: Offset(5.0, 8.0),
          child: SizedBox(
            width: 78.0,
            child: Text(
              'Primary School',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 10,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                height: 0.9,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
        ),
      ],
    );
  }
}
