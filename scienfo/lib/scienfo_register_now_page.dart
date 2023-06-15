import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './register_now_button.dart';
import './scienfo_content_page1.dart';
import 'package:adobe_xd/page_link.dart';
import './scienfo_logo.dart';
import './welcome_text.dart';
import './email_input.dart';
import './password_input.dart';
import './pre_school_button.dart';
import './primary_school_button.dart';
import './middle_school_button.dart';

class ScienfoRegisterNowPage extends StatelessWidget {
  ScienfoRegisterNowPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x2bbc088f),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 37.0, end: 35.0),
            Pin(size: 50.0, end: 129.0),
            child:
                // Adobe XD layer: 'RegisterNow_button' (component)
                PageLink(
              links: [
                PageLinkInfo(
                  pageBuilder: () => ScienfoContentPage1(),
                ),
              ],
              child: RegisterNowButton(),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 193.0, start: 40.0),
            Pin(size: 19.0, middle: 0.5179),
            child: Text(
              'Please register to your account',
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
            Pin(size: 114.0, start: 37.0),
            Pin(size: 19.0, middle: 0.7266),
            child:
                // Adobe XD layer: 'SelectUserProfile' (group)
                Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: Text(
                  'Select User Profile',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    color: const Color(0xffffffff),
                    height: 1.2142857142857142,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  softWrap: false,
                )),
              ],
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
            Pin(size: 82.0, middle: 0.4238),
            child:
                // Adobe XD layer: 'Welcome_text' (component)
                WelcomeText(),
          ),
          Pinned.fromPins(
            Pin(start: 37.0, end: 50.7),
            Pin(size: 42.9, middle: 0.5871),
            child:
                // Adobe XD layer: 'Email_input' (component)
                EmailInput(),
          ),
          Pinned.fromPins(
            Pin(start: 37.0, end: 50.7),
            Pin(size: 43.0, middle: 0.6696),
            child:
                // Adobe XD layer: 'Password_input' (component)
                PasswordInput(),
          ),
          Pinned.fromPins(
            Pin(size: 88.0, start: 37.0),
            Pin(size: 28.0, middle: 0.7644),
            child:
                // Adobe XD layer: 'PreSchool_button' (component)
                PreSchoolButton(),
          ),
          Align(
            alignment: Alignment(0.0, 0.529),
            child: SizedBox(
              width: 88.0,
              height: 28.0,
              child:
                  // Adobe XD layer: 'PrimarySchool_button' (component)
                  PrimarySchoolButton(),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 88.0, end: 37.0),
            Pin(size: 28.0, middle: 0.7644),
            child:
                // Adobe XD layer: 'MiddleSchool_button' (component)
                MiddleSchoolButton(),
          ),
        ],
      ),
    );
  }
}
