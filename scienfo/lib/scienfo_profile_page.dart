import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './user_image.dart';
import './option_icon.dart';
import './favourites_button.dart';
import './settings_button.dart';
import './scienfo_settings_page.dart';
import 'package:adobe_xd/page_link.dart';
import './liked_content_field.dart';
import './search_icon_button.dart';
import './scienfo_search_page.dart';
import './profile_icon_button.dart';
import './home_icon_button.dart';
import './scienfo_content_page1.dart';

class ScienfoProfilePage extends StatelessWidget {
  ScienfoProfilePage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 150.0, middle: 0.5),
            Pin(size: 153.4, start: 106.6),
            child:
                // Adobe XD layer: 'UserImage' (component)
                user_image(),
          ),
          Pinned.fromPins(
            Pin(size: 7.0, end: 20.0),
            Pin(size: 34.0, start: 53.0),
            child:
                // Adobe XD layer: 'Option icon' (component)
                OptionIcon(),
          ),
          Transform.translate(
            offset: Offset(0.0, 366.0),
            child: Container(
              width: 205.0,
              height: 1.0,
              color: const Color(0xff707070),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 367.0),
            child: Container(
              width: 410.0,
              height: 0.0,
              color: const Color(0xff707070),
            ),
          ),
          Align(
            alignment: Alignment(-0.493, -0.277),
            child: SizedBox(
              width: 28,
              height: 28,
              child:
                  // Adobe XD layer: 'Favourites_button' (component)
                  FavouritesButton(),
            ),
          ),
          Align(
            alignment: Alignment(0.482, -0.274),
            child: SizedBox(
              width: 28.0,
              height: 28.0,
              child:
                  // Adobe XD layer: 'Settings_button' (component)
                  PageLink(
                links: [
                  PageLinkInfo(
                    pageBuilder: () => ScienfoSettingsPage(),
                  ),
                ],
                child: SettingsButton(),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 403.0, middle: 0.7500),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 135.0,
                    height: 199.0,
                    child:
                        // Adobe XD layer: 'LikedContent_field' (component)
                        LikedContentField(),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.2, 198.2),
                  child: Container(
                    width: 410.0,
                    height: 3.0,
                    color: const Color(0xffffffff),
                  ),
                ),
                Align(
                  alignment: Alignment(0.004, -1.0),
                  child: SizedBox(
                    width: 135.0,
                    height: 199.0,
                    child:
                        // Adobe XD layer: 'LikedContent_field' (component)
                        LikedContentField(),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 135.0,
                    height: 199.0,
                    child:
                        // Adobe XD layer: 'LikedContent_field' (component)
                        LikedContentField(),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    width: 135.0,
                    height: 199.0,
                    child:
                        // Adobe XD layer: 'LikedContent_field' (component)
                        LikedContentField(),
                  ),
                ),
                Align(
                  alignment: Alignment(0.004, 1.0),
                  child: SizedBox(
                    width: 135.0,
                    height: 199.0,
                    child:
                        // Adobe XD layer: 'LikedContent_field' (component)
                        LikedContentField(),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 135.0,
                    height: 199.0,
                    child:
                        // Adobe XD layer: 'LikedContent_field' (component)
                        LikedContentField(),
                  ),
                ),
              ],
            ),
          ),
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
