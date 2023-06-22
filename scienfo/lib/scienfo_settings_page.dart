import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'exit_icon.dart';
import './favourites_button.dart';
import './scienfo_profile_page.dart';
import 'package:adobe_xd/page_link.dart';
import './settings_button.dart';
import './user_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './search_icon_button.dart';
import './scienfo_search_page.dart';
import './profile_icon_button.dart';
import './home_icon_button.dart';
import './scienfo_content_page1.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ScienfoSettingsPage extends StatefulWidget {
  ScienfoSettingsPage({Key? key}) : super(key: key);

  @override
  _ScienfoSettingsPageState createState() => _ScienfoSettingsPageState();
}

class _ScienfoSettingsPageState extends State<ScienfoSettingsPage> {
  String selectedUserType = 'pre-school'; //default value
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
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          //...
          // Your other widgets here
          //...

          Pinned.fromPins(
            Pin(size: 135.0, start: 37.0), // Adjust these to suit your layout
            Pin(size: 50.0, middle: 0.7844), // Adjust these to suit your layout
            child: DropdownButton<String>(
              dropdownColor: const Color.fromARGB(255, 105, 99, 92),
              value: selectedUserType,
              icon: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              iconSize: 24,
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
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 135.0, start: 37.0),
            Pin(size: 50.0, middle: 0.9),
            child: ElevatedButton(
              child: Text("Save"),
              onPressed: () => updateUserType(
                  FirebaseAuth.instance.currentUser!.uid, selectedUserType),
            ),
          ),
        ],
      ),
    );
  }
}
