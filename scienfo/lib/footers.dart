import 'package:flutter/material.dart';

class Footers extends StatelessWidget {
  Footers({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'FooterButtons' (group)
        Stack(
          children: <Widget>[
            SizedBox(
              width: 412.0,
              height: 60.0,
              child: Stack(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 412.0,
                        height: 60.0,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 412.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: const Color(0x66fafafa),
                                borderRadius: BorderRadius.circular(72.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ],
    );
  }
}
