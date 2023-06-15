import 'package:flutter/material.dart';
import './scienfo_search_page.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import './scienfo_profile_page.dart';

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
