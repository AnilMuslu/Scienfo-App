import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:scienfo/services/firebase_service.dart';
import './option_icon.dart';
import './label_text_field.dart';
import './blog_button.dart';
import './like_button.dart';
import './search_icon_button.dart';
import './scienfo_search_page.dart';
import 'package:adobe_xd/page_link.dart';
import './profile_icon_button.dart';
import './scienfo_profile_page.dart';
import './home_icon_button.dart';

class ScienfoContentPage1 extends StatelessWidget {
  final FirebaseService firebaseService = FirebaseService();

  ScienfoContentPage1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: firebaseService.getImageUrls(),
      builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          // Image URLs have been loaded. Create an Image widget for each URL.
          List<String> imageUrls = snapshot.data!;
          return Scaffold(
            backgroundColor: const Color(0xffffffff),
            body: Stack(
              children: <Widget>[
                // Add this to display the images:
                PageView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: imageUrls.length,
                  itemBuilder: (context, index) {
                    return Image.network(
                      imageUrls[index],
                      fit: BoxFit.fill,
                    );
                  },
                ),
                
                Pinned.fromPins(
                  Pin(size: 7.0, end: 20.0),
                  Pin(size: 34.0, start: 53.0),
                  child:
                      // Adobe XD layer: 'Option icon' (component)
                      OptionIcon(),
                ),
                Pinned.fromPins(
                  Pin(start: 23.0, end: 29.0),
                  Pin(size: 114.0, end: 94.0),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: 269.0,
                          height: 21.0,
                          child:
                              // Adobe XD layer: 'Label_textField' (component)
                              LabelTextField(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child:
                              // Adobe XD layer: 'Blog_button' (component)
                              BlogButton(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child:
                              // Adobe XD layer: 'Like_button' (component)
                              LikeButton(),
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
                                          borderRadius:
                                              BorderRadius.circular(72.0),
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
                            HomeIconButton(),
                      ),
                    ],
                  ),
                ),
                // Add the rest of your widgets here...
              ],
            ),
          );
        }
      },
    );
  }
}