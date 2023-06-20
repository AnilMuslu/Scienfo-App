import 'package:adobe_xd/adobe_xd.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:scienfo/label_text_field.dart';
import 'package:scienfo/option_icon.dart';
import 'package:scienfo/profile_icon_button.dart';
import 'package:scienfo/scienfo_profile_page.dart';
import 'package:scienfo/search_icon_button.dart';
import 'package:scienfo/services/firebase_service.dart';

import 'blog_button.dart';
import 'home_icon_button.dart';
import 'like_button.dart';
import 'scienfo_search_page.dart';

class ScienfoContentPage1 extends StatefulWidget {
  ScienfoContentPage1({Key? key}) : super(key: key);

  @override
  _ScienfoContentPage1State createState() => _ScienfoContentPage1State();
}

class _ScienfoContentPage1State extends State<ScienfoContentPage1> {
  final FirebaseService firebaseService = FirebaseService();

  @override
  void initState() {
    firebaseService.getImageUrlsStream().listen((data) {
      print("DataReceived: $data");
      for (var url in data) {
        print("URL: $url");
      }
    }, onError: (err) {
      print("Received error: $err");
    }, onDone: () {
      print("Done");
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<String>>(
      stream: firebaseService.getImageUrlsStream(),
      builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          print("StreamBuilder is in waiting state");

          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          print("StreamBuilder encountered an error: ${snapshot.error}");

          return Text('Error: ${snapshot.error}');
        } else if (snapshot.connectionState == ConnectionState.active) {
          print("StreamBuilder is active");

          List<String> imageUrls = snapshot.data!;
          print(imageUrls);
          return Scaffold(
              backgroundColor: const Color(0xffffffff),
              body: Stack(
                children: <Widget>[
                  PageView.builder(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemCount: imageUrls.length,
                    itemBuilder: (BuildContext context, int index) {
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
                              
                              LabelTextField(documentId: 'your_image_id')
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
                ],
              ));
        } else {
          print("StreamBuilder is in an unknown state");
          return Text('Unknown state');
        }
      },
    );
  }
}
