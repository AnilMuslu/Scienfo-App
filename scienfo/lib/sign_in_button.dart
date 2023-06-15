import 'package:flutter/material.dart';
import './scienfo_login_page.dart';
import 'package:adobe_xd/page_link.dart';

class SignInButton extends StatelessWidget {
  SignInButton({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'SignIn_button' (group)
        PageLink(
          links: [
            PageLinkInfo(
              pageBuilder: () => ScienfoLoginPage(),
            ),
          ],
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xfff36d7d),
                  borderRadius: BorderRadius.circular(25.0),
                  border:
                      Border.all(width: 2.0, color: const Color(0xffffffff)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xa0c9274d),
                      offset: Offset(0, 8),
                      blurRadius: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment(-0.002, 0.063),
          child: SizedBox(
            width: 50.0,
            height: 21.0,
            child: Text(
              'LOG IN',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                height: 1.0625,
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
