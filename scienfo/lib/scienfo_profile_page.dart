import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './user_image.dart';
import 'exit_icon.dart';
import './settings_button.dart';
import './scienfo_settings_page.dart';
import 'package:adobe_xd/page_link.dart';
import './liked_content_field.dart';
import './search_icon_button.dart';
import './scienfo_search_page.dart';
import './profile_icon_button.dart';
import './home_icon_button.dart';
import './scienfo_content_page1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ScienfoProfilePage extends StatefulWidget {
  ScienfoProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  _ScienfoProfilePageState createState() => _ScienfoProfilePageState();
}

class _ScienfoProfilePageState extends State<ScienfoProfilePage> {
  String selectedUserType = 'pre-school'; // default value
  final firestoreInstance = FirebaseFirestore.instance;

  void updateUserType(String userId, String userType) async {
    await firestoreInstance
        .collection('users')
        .doc(userId)
        .update({'userType': userType});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdb25c),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 150.0, middle: 0.5),
            Pin(size: 153.4, start: 106.6),
            child: user_image(),
          ),
          Pinned.fromPins(
            Pin(size: 7.0, end: 20.0),
            Pin(size: 34.0, start: 53.0),
            child: ExitIcon(),
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
          Pinned.fromPins(
            Pin(size: 135.0, middle: 0.5),
            Pin(size: 50.0, middle: 0.4),
            child: ElevatedButton(
              child: Text("Go to Favorites"),
              onPressed: () {
                // perform your action here
              },
            ),
          ),
          Pinned.fromPins(
            Pin(size: 200.0, middle: 0.5),
            Pin(size: 50.0, middle: 0.5),
            child: Text(
              'Change Profile Type',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 135.0, middle: 0.5),
            Pin(size: 50.0, middle: 0.6),
            child: PageLink(
              links: [PageLinkInfo(pageBuilder: () => ScienfoSettingsPage())],
              child: SettingsButton(),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 200.0, middle: 0.5),
            Pin(size: 50.0, middle: 0.7),
            child: DropdownButton<String>(
              value: selectedUserType,
              icon: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              elevation: 16,
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  selectedUserType = newValue!;
                });
              },
              items: <String>['pre-school', 'primary school', 'middle school']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 200.0, middle: 0.5),
            Pin(size: 50.0, middle: 0.8),
            child: ElevatedButton(
              child: Text("Save"),
              onPressed: () {
                updateUserType(
                    FirebaseAuth.instance.currentUser!.uid, selectedUserType);
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Notification'),
                      content: Text('User type saved'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 60.5, end: 0.0),
            child: Stack(
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
                    child: PageLink(
                      links: [
                        PageLinkInfo(pageBuilder: () => ScienfoSearchPage())
                      ],
                      child: SearchIconButton(),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, end: 46.0),
                  Pin(size: 30.0, middle: 0.5078),
                  child: ProfileIconButton(),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, start: 48.0),
                  Pin(size: 30.0, middle: 0.475),
                  child: PageLink(
                    links: [
                      PageLinkInfo(pageBuilder: () => ScienfoContentPage1())
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
