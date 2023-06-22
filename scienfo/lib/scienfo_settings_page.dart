import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'exit_icon.dart';
import './favourites_button.dart';
import './scienfo_profile_page.dart';
import 'package:adobe_xd/page_link.dart';
import './settings_button.dart';
import './user_image.dart';
import './pre_school_button.dart';
import './primary_school_button.dart';
import './middle_school_button.dart';
import './search_icon_button.dart';
import './scienfo_search_page.dart';
import './profile_icon_button.dart';
import './home_icon_button.dart';
import './scienfo_content_page1.dart';

class ScienfoSettingsPage extends StatelessWidget {
  ScienfoSettingsPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 520.0, end: 0.0),
            child: Container(
              color: const Color(0xfffdb25c),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 1.0, middle: 0.4004),
            child: Stack(
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
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 659.4),
            child: Container(
              width: 412.0,
              height: 3.0,
              color: const Color(0xff000000),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.029),
            child: SizedBox(
              width: 150.0,
              height: 21.0,
              child: Text(
                'Change User Profile',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  height: 1.0625,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 7.0, end: 20.0),
            Pin(size: 34.0, start: 53.0),
            child:
                // Adobe XD layer: 'Option icon' (component)
                ExitIcon(),
          ),
          Align(
            alignment: Alignment(-0.493, -0.277),
            child: SizedBox(
              width: 28,
              height: 28,
              child:
                  // Adobe XD layer: 'Favourites_button' (component)
                  PageLink(
                links: [
                  PageLinkInfo(
                    pageBuilder: () => ScienfoProfilePage(),
                  ),
                ],
                child: FavouritesButton(),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.482, -0.274),
            child: SizedBox(
              width: 28.0,
              height: 28.0,
              child:
                  // Adobe XD layer: 'Settings_button' (component)
                  SettingsButton(),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 150.0, middle: 0.5),
            Pin(size: 153.4, start: 106.6),
            child:
                // Adobe XD layer: 'UserImage' (component)
                user_image(),
          ),

          /*
          Align(
            alignment: Alignment(0.006, 0.13),
            child: SizedBox(
              width: 88.0,
              height: 28.0,
              child:
                  // Adobe XD layer: 'PreSchool_button' (component)
                  PreSchoolButton(),
            ),
          ),
          Align(
            alignment: Alignment(0.006, 0.238),
            child: SizedBox(
              width: 88.0,
              height: 28.0,
              child:
                  // Adobe XD layer: 'PrimarySchool_button' (component)
                  PrimarySchoolButton(),
            ),
          ),
          Align(
            alignment: Alignment(0.006, 0.346),
            child: SizedBox(
              width: 88.0,
              height: 28.0,
              child:
                  // Adobe XD layer: 'MiddleSchool_button' (component)
                  MiddleSchoolButton(),
            ),
          ),
          */

          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 60.5, end: 0.0),
            child:
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
                Align(
                  alignment: Alignment(0.006, -0.043),
                  child: SizedBox(
                    width: 25.0,
                    height: 31.0,
                    child:
                        // Adobe XD layer: 'SearchIcon_button' (component)
                        PageLink(
                      links: [
                        PageLinkInfo(
                          pageBuilder: () => ScienfoSearchPage(),
                        ),
                      ],
                      child: SearchIconButton(),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, end: 46.0),
                  Pin(size: 30.0, middle: 0.5078),
                  child:
                      // Adobe XD layer: 'ProfileIcon_button' (component)
                      ProfileIconButton(),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, start: 48.0),
                  Pin(size: 30.0, middle: 0.475),
                  child:
                      // Adobe XD layer: 'HomeIcon_button' (component)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        pageBuilder: () => ScienfoContentPage1(),
                      ),
                    ],
                    child: HomeIconButton(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
