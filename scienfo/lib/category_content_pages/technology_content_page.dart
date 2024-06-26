import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scienfo/label_text_field.dart';
import 'package:scienfo/exit_icon.dart';
import 'package:scienfo/profile_icon_button.dart';
import 'package:scienfo/scienfo_profile_page.dart';
import 'package:scienfo/search_icon_button.dart';
import 'package:scienfo/services/firebase_service.dart';
import 'package:scienfo/models/current_image_index.dart';
import 'package:scienfo/services/web_view_screen.dart';

import '../blog_button.dart';
import '../home_icon_button.dart';
import '../main.dart';
import '../scienfo_content_page1.dart';
import '../scienfo_search_page.dart';

class TechnologyContentPage extends StatefulWidget {
  TechnologyContentPage({Key? key}) : super(key: key);

  @override
  _TechnologyContentPageState createState() => _TechnologyContentPageState();
}

class _TechnologyContentPageState extends State<TechnologyContentPage> {
  final FirebaseService firebaseService = FirebaseService();

  Set<String> favoriteImages = {};

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Map<String, dynamic>>>(
      stream: firebaseService.getTechnologyImagesStream(),
      builder: (BuildContext context,
          AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          print("StreamBuilder is in waiting state");

          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          print("StreamBuilder encountered an error: ${snapshot.error}");

          return Text('Error: ${snapshot.error}');
        } else if (snapshot.connectionState == ConnectionState.active) {
          print("StreamBuilder is active");

          List<Map<String, dynamic>> imageData = snapshot.data!;
          print("SNAPSHOT: $snapshot");

          return Scaffold(
              backgroundColor: const Color(0xffffffff),
              body: Stack(
                children: <Widget>[
                  PageView.builder(
                    scrollDirection: Axis.vertical,
                    //physics: BouncingScrollPhysics(),
                    itemCount: imageData.length,
                    onPageChanged: (int index) {
                      Provider.of<CurrentImageIndex>(context, listen: false)
                          .setIndex(index);
                    },

                    itemBuilder: (BuildContext context, int index) {
                      Map<String, dynamic> currentImage = imageData[index];
                      print("CURRENT IMAGE DATA: $currentImage");

                      String url = imageData[index]["url"];
                      String id = imageData[index]["id"];
                      print("HERE IS THE ID!!! $id");

                      final user = Provider.of<AuthenticationService>(context,
                              listen: false)
                          .user;
                      final userType = Provider.of<AuthenticationService>(
                              context,
                              listen: false)
                          .userType;

                      if (user != null) {
                        print("HERE IS THE USER ID!!! ${user.uid}");
                        print("HERE IS THE USER TYPE!!! $userType");
                      } else {
                        print("No user is currently signed in.");
                      }

                      return Image.network(url, fit: BoxFit.fill);
                    },
                  ),
                  Pinned.fromPins(
                    Pin(size: 50.0, end: 0.0),
                    Pin(size: 50.0, start: 40.0),
                    child: ExitIcon(),
                  ),
                  Pinned.fromPins(
                    Pin(start: 10.0, end: 29.0),
                    Pin(size: 114.0, end: 94.0),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: SizedBox(
                              width: 335.0,
                              height: 50.0,
                              child:
                                  // Adobe XD layer: 'Label_textField' (component)
                                  Consumer<CurrentImageIndex>(
                                builder: (context, CurrentImageIndex, _) {
                                  if (CurrentImageIndex.currentIndex <
                                      imageData.length) {
                                    return LabelTextField(
                                        documentId: imageData[CurrentImageIndex
                                            .currentIndex]["id"]);
                                  } else {
                                    return Container();
                                  }
                                },
                              )),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: Consumer<CurrentImageIndex>(
                              builder: (context, currentIndex, _) {
                                if (currentIndex.currentIndex <
                                    imageData.length) {
                                  final currentImage =
                                      imageData[currentIndex.currentIndex];
                                  return InkWell(
                                    onTap: () {
                                      final blogUrl = currentImage['blog'];
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => WebViewScreen(
                                            url: blogUrl,
                                          ),
                                        ),
                                      );
                                    },
                                    child: BlogButton(),
                                  );
                                } else {
                                  return Container();
                                }
                              },
                            ),
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
                              // Adobe XD layer: 'ProfileIcon_button' (component)
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
              ));
        } else {
          print("StreamBuilder is in an unknown state");
          return Text('Unknown state');
        }
      },
    );
  }
}
