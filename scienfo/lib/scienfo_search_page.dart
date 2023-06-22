import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './search_input.dart';
import './science_search_button.dart';
import './technology_search_button.dart';
import './engineering_search_button.dart';
import './mathematics_search_button.dart';
import './art_search_button.dart';
import './health_search_button.dart';
import './nutrition_search_button.dart';
import './sports_search_button.dart';
import './sdg_search_button.dart';
import 'exit_icon.dart';
import './search_icon_button.dart';
import './profile_icon_button.dart';
import './scienfo_profile_page.dart';
import 'package:adobe_xd/page_link.dart';
import './home_icon_button.dart';
import './scienfo_content_page1.dart';

class ScienfoSearchPage extends StatelessWidget {
  ScienfoSearchPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdb25c),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 8.5, end: 35.7),
            Pin(size: 43.7, start: 47.0),
            child:
                // Adobe XD layer: 'Search_input' (component)
                SearchInput(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8.5, 105.7, 17.5, 81.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 63.4, start: 0.0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        pageBuilder: () => ScienfoContentPage1(),
                      ),
                    ],
                    child: ScienceSearchButton(),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 63.4, start: 83.1),
                  child:
                      // Adobe XD layer: 'TechnologySearch_bu…' (component)
                      TechnologySearchButton(),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 63.4, middle: 0.25),
                  child:
                      // Adobe XD layer: 'EngineeringSearch_b…' (component)
                      EngineeringSearchButton(),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 63.4, middle: 0.375),
                  child:
                      // Adobe XD layer: 'MathematicsSearch_b…' (component)
                      MathematicsSearchButton(),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 63.4, middle: 0.5),
                  child:
                      // Adobe XD layer: 'ArtSearch_button' (component)
                      ArtSearchButton(),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 63.4, middle: 0.625),
                  child:
                      // Adobe XD layer: 'HealthSearch_button' (component)
                      HealthSearchButton(),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 63.4, middle: 0.75),
                  child:
                      // Adobe XD layer: 'NutritionSearch_but…' (component)
                      NutritionSearchButton(),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 63.4, end: 83.1),
                  child:
                      // Adobe XD layer: 'SportsSearch_button' (component)
                      SportsSearchButton(),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 63.4, end: 0.0),
                  child:
                      // Adobe XD layer: 'SDGSearch_button' (component)
                      SDGSearchButton(),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 7.0, end: 20.0),
            Pin(size: 34.0, start: 53.0),
            child:
                // Adobe XD layer: 'Option icon' (component)
                ExitIcon(),
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
                        SearchIconButton(),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, end: 46.0),
                  Pin(size: 30.0, middle: 0.5078),
                  child:
                      // Adobe XD layer: 'ProfileIcon_button' (component)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        pageBuilder: () => ScienfoProfilePage(),
                      ),
                    ],
                    child: ProfileIconButton(),
                  ),
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
