import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './user_image.dart';
import 'exit_icon.dart';
import 'package:adobe_xd/page_link.dart';
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
  String selectedUserType = '#Pre-school'; // default value
  final firestoreInstance = FirebaseFirestore.instance;
  String? currentUserType;

  Future<String?> getUserType() async {
    final doc = await firestoreInstance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    return doc.get('userType');
  }

  void updateUserType(String userId, String userType) async {
    if (userType == '#General') {
      await firestoreInstance
          .collection('users')
          .doc(userId)
          .update({'userType': null});
    } else {
      await firestoreInstance
          .collection('users')
          .doc(userId)
          .update({'userType': userType});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdb25c),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 150.0, middle: 0.5),
            Pin(size: 153.4, start: 54.6),
            child: UserImage(
                uid: FirebaseAuth.instance.currentUser?.uid ??
                    'defaultUid'), // Add the check here
          ),
          Pinned.fromPins(
            Pin(start: 10.0, end: 10.0),
            Pin(size: 50.0, middle: 0.25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        right: 10.0), // Spacing between the line and the text
                    height:
                        2.0, // Adjust the height to control the thickness of the line
                    color: Colors.black, // Color of the line
                  ),
                ),
                Text(
                  'Profile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    color: const Color(0xff000000),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 10.0), // Spacing between the line and the text
                    height:
                        2.0, // Adjust the height to control the thickness of the line
                    color: Colors.black, // Color of the line
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 50.0, end: 0.0), // increase the size as necessary
            Pin(size: 50.0, start: 40.0), // increase the size as necessary
            child: ExitIcon(),
          ),
          Pinned.fromPins(
            Pin(size: 200.0, middle: 0.5),
            Pin(size: 50.0, middle: 0.4),
            child: FutureBuilder<String?>(
              future: getUserType(),
              builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
                final userType = snapshot.data ?? '#General';

                return RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Current Profile Type: ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: userType,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Center(
            child: Pinned.fromPins(
              Pin(size: 200.0, middle: 0.5),
              Pin(
                  size: 150.0,
                  middle: 0.6), // Adjust the size to fit both children
              child: Column(
                children: <Widget>[
                  Text(
                    "Change Profile Type:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(3), // adjust for desired padding
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.black,
                            width:
                                1.5), // adjust for desired border color and width
                        borderRadius: BorderRadius.circular(
                            4), // optional, for rounded corners
                      ),
                      child: DropdownButton<String>(
                        value: selectedUserType,
                        icon: const Icon(
                          Icons.arrow_downward,
                          color: Colors.black,
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
                        items: <String>[
                          '#Pre-school',
                          '#Primary-school',
                          '#Middle-school',
                          '#General'
                        ].map<DropdownMenuItem<String>>((String value) {
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
                  ),
                  ElevatedButton(
                    child: Text("Save"),
                    onPressed: () {
                      updateUserType(FirebaseAuth.instance.currentUser!.uid,
                          selectedUserType);
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ScienfoContentPage1()),
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment:
                Alignment(0.0, 0.8), // adjust the alignment values as necessary
            child: Container(
              width: 140.0, // adjust the size as necessary
              height: 140.0, // adjust the size as necessary
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      const AssetImage('assets/images/scienfo_logo_image.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(56.0),
              ),
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
