import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserImage extends StatefulWidget {
  final String uid;
  UserImage({required this.uid, Key? key}) : super(key: key);

  @override
  _UserImageState createState() => _UserImageState();
}

class _UserImageState extends State<UserImage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late Future<String?> userEmail;

  Future<String?> _getUserEmail(String uid) async {
    // Retrieve the document from Firestore
    DocumentSnapshot doc = await _firestore.collection('users').doc(uid).get();
    return doc.exists ? doc.get('email') as String : null;
  }

  @override
  void initState() {
    super.initState();
    userEmail = _getUserEmail(widget.uid);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: userEmail,
      builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text("Error: ${snapshot.error}");
        } else {
          return Stack(
            children: <Widget>[
              
              Transform.translate(
                offset: Offset(14.9, 0.0),
                child: SizedBox(
                  width: 120.0,
                  height: 122.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 120.0,
                        height: 122.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('assets/images/profile_user_photo.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(size: 19.0, end: 0.0),
                child: Text(
                  snapshot.data ?? 'Guest', // Displaying the user's email
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    color: const Color(0xff000000),
                    height: 1.2142857142857142,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  softWrap: false,
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
