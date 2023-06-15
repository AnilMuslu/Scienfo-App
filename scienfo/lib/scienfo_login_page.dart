import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './email_input.dart';
import './password_input.dart';
import './scienfo_logo.dart';
import './welcome_text.dart';
import './sign_in_button.dart';
import './scienfo_content_page1.dart';
import 'package:adobe_xd/page_link.dart';

class ScienfoLoginPage extends StatelessWidget {
  ScienfoLoginPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x2bbc088f),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 113.0, end: 49.0),
            Pin(size: 19.0, end: 84.0),
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                color: const Color(0xffffffff),
                height: 1.2142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 176.0, start: 40.0),
            Pin(size: 19.0, middle: 0.5536),
            child: Text(
              'Please login to your account',
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
            Pin(start: 37.0, end: 50.7),
            Pin(size: 42.9, middle: 0.6264),
            child:
                // Adobe XD layer: 'Email_input' (component)
                EmailInput(),
          ),
          Pinned.fromPins(
            Pin(start: 37.0, end: 50.7),
            Pin(size: 43.0, middle: 0.7339),
            child:
                // Adobe XD layer: 'Password_input' (component)
                PasswordInput(),
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
          Pinned.fromPins(
            Pin(start: 37.0, end: 47.0),
            Pin(size: 50.0, end: 129.0),
            child:
                // Adobe XD layer: 'SignIn_button' (component)
                PageLink(
              links: [
                PageLinkInfo(
                  pageBuilder: () => ScienfoContentPage1(),
                ),
              ],
              child: SignInButton(),
            ),
          ),
        ],
      ),
    );
  }
}
