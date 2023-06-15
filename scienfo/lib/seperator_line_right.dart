import 'package:flutter/material.dart';

class SeperatorLineRight extends StatelessWidget {
  SeperatorLineRight({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: 412.0,
          height: 1.0,
          child: Stack(
            children: <Widget>[
              SizedBox(
                width: 412.0,
                height: 1.0,
                child: Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(0.0, 1.0),
                      child: Container(
                        width: 410.0,
                        height: 0.0,
                        color: const Color(0xff707070),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(207.0, 0.0),
                      child: Container(
                        width: 205.0,
                        height: 1.0,
                        color: const Color(0xff707070),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
