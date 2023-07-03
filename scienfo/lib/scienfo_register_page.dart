import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:scienfo/first_login_button.dart';
import 'package:scienfo/scienfo_login_page.dart';
import './register_button.dart';
import './scienfo_register_now_page.dart';
import 'package:adobe_xd/page_link.dart';
import './login_as_guest_button.dart';
import './scienfo_content_page1.dart';
import './scienfo_logo.dart';
import './welcome_text.dart';
import './gradient_background.dart';

class ScienfoRegisterPage extends StatelessWidget {
  ScienfoRegisterPage({
    Key? key,
  }) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Stack(
          children: <Widget>[
            Pinned.fromPins(
              Pin(start: 37.0, end: 47.0),
              Pin(size: 205.0, end: 129.0),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0), Pin(size: 50.0, end: 0.0),
                      child: PageLink(
                        links: [
                          PageLinkInfo(
                            pageBuilder:  () => ScienfoLoginPage()
                          )
                        ],
                        child: FirstLoginButton(),
                      )
                      ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 50.0, middle: 0.5032),
                    child:
                        // Adobe XD layer: 'Register_button' (component)
                        PageLink(
                      links: [
                        PageLinkInfo(
                          pageBuilder: () => ScienfoRegisterNowPage(),
                        ),
                      ],
                      child: RegisterButton(),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 50.0, start: 0.0),
                    child:
                        // Adobe XD layer: 'LoginAsGuest_button' (component)
                        PageLink(
                      links: [
                        PageLinkInfo(
                          pageBuilder: () => ScienfoContentPage1(),
                        ),
                      ],
                      child: LoginAsGuestButton(),
                    ),
                  ),
                ],
              ),
            ),
            Pinned.fromPins(
              Pin(size: 273.0, start: 40.0),
              Pin(size: 19.0, middle: 0.5603),
              child: Text(
                'Please login to your account or register',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  color: const Color(0xffffffff),
                  height: 1.2857142857142858,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              ),
            ),
            Pinned.fromPins(
              Pin(start: 76.0, end: 76.0),
              Pin(size: 215.0, start: 100.0),
              child:
                  // Adobe XD layer: 'ScienfoLogo' (component)
                  scienfo_logo(),
            ),
            Pinned.fromPins(
              Pin(size: 173.0, start: 37.0),
              Pin(size: 82.0, middle: 0.455),
              child:
                  // Adobe XD layer: 'Welcome_text' (component)
                  WelcomeText(),
            ),
          ],
        ),
      ),
    );
  }
}
