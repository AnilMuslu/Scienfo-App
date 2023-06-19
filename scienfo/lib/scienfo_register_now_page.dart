import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './register_now_button.dart';
import './scienfo_content_page1.dart';
import 'package:adobe_xd/page_link.dart';
import './scienfo_logo.dart';
import './welcome_text.dart';
import './email_input.dart';
import './password_input.dart';
import './pre_school_button.dart';
import './primary_school_button.dart';
import './middle_school_button.dart';

class ScienfoRegisterNowPage extends StatefulWidget {
  ScienfoRegisterNowPage({Key? key}) : super(key: key);

  @override
  _ScienfoRegisterNowPageState createState() => _ScienfoRegisterNowPageState();
}

class _ScienfoRegisterNowPageState extends State<ScienfoRegisterNowPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  List<DropdownMenuItem<String>> userTypeItems = [
    DropdownMenuItem(child: Text("Pre-School"), value: "pre-school"),
    DropdownMenuItem(child: Text("Primary School"), value: "primary school"),
    DropdownMenuItem(child: Text("Middle School"), value: "middle school")
  ];

  String? selectedUserType;

  @override
  void initState() {
    super.initState();
    selectedUserType = "pre-school";
  }

  void registerUser(BuildContext context) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
      FirebaseFirestore.instance
          .collection("users")
          .doc(userCredential.user!.uid)
          .set({"email": emailController.text, "userType": selectedUserType});
      print("User registered: ${userCredential.user}");
      final snackBar =
          SnackBar(content: Text("User registration is successful."));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      /*
      User? user = userCredential.user;
      if (user != null) {
        // registration successful
        // navigate to next page or do something else
        ScienfoContentPage1();
      } else {
        // registration failed
      }
      */
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ScienfoContentPage1()),
      );
    } on FirebaseAuthException catch (e) {
      String message;
      if (e.code == "weak-password") {
        message = "The provided password is too weak.";
      } else if (e.code == "email-already-in-use") {
        message = "The account already exist for that email";
      } else {
        message = e.message ?? "An unknown error occured.";
      }
      final snackBar = SnackBar(content: Text(message));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (e) {
      print(e);
      final snackBar =
          SnackBar(content: Text("An error occurred. Please try again."));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        backgroundColor: const Color(0x2bbc088f),
        body: Stack(
          children: <Widget>[
            Pinned.fromPins(
              Pin(start: 37.0, end: 35.0),
              Pin(size: 50.0, end: 50.0),
              /*
                child:
                    // Adobe XD layer: 'RegisterNow_button' (component)
                    PageLink(
                  links: [
                    PageLinkInfo(
                      pageBuilder: () => ScienfoContentPage1(),
                    ),
                  ],
                  child: RegisterNowButton(),
                ),
                */
              child: GestureDetector(
                onTap: () => registerUser(context),
                child: RegisterNowButton(),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 240.0, start: 40.0),
              Pin(size: 19.0, middle: 0.5179),
              child: Text(
                'Please register for a new account',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  color: const Color(0xffffffff),
                  height: 1.2857142857142858,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              ),
            ),
            Pinned.fromPins(
              Pin(size: 130.0, start: 37.0),
              Pin(size: 19.0, middle: 0.7266),
              child:
                  // Adobe XD layer: 'SelectUserProfile' (group)
                  Stack(
                children: <Widget>[
                  SizedBox.expand(
                      child: Text(
                    'Select User Profile:',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      color: const Color(0xffffffff),
                      height: 1.2142857142857142,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  )),
                ],
              ),
            ),
            Pinned.fromPins(
              Pin(start: 76.0, end: 76.0),
              Pin(size: 215.0, start: 100.0),
              child:
                  // Adobe XD layer: 'ScienfoLogo' (component)
                  scienfo_logo(),
            ),
            Pinned.fromPins(
              Pin(size: 173.0, start: 37.0),
              Pin(size: 82.0, middle: 0.4238),
              child:
                  // Adobe XD layer: 'Welcome_text' (component)
                  WelcomeText(),
            ),
            Pinned.fromPins(
              Pin(start: 37.0, end: 50.7),
              Pin(size: 42.9, middle: 0.5871),
              child:
                  // Adobe XD layer: 'Email_input' (component)
                  EmailInput(
                emailController: emailController,
              ),
            ),
            Pinned.fromPins(
              Pin(start: 37.0, end: 50.7),
              Pin(size: 43.0, middle: 0.6696),
              child:
                  // Adobe XD layer: 'Password_input' (component)
                  PasswordInput(
                passwordController: passwordController,
              ),
            ),
            /*
            Pinned.fromPins(
              Pin(size: 88.0, start: 37.0),
              Pin(size: 28.0, middle: 0.7844),
              child:
                  // Adobe XD layer: 'PreSchool_button' (component)
                  PreSchoolButton(),
            ),
            Align(
              alignment: Alignment(0.0, 0.570),
              child: SizedBox(
                width: 88.0,
                height: 28.0,
                child:
                    // Adobe XD layer: 'PrimarySchool_button' (component)
                    PrimarySchoolButton(),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 88.0, end: 37.0),
              Pin(size: 28.0, middle: 0.7844),
              child:
                  // Adobe XD layer: 'MiddleSchool_button' (component)
                  MiddleSchoolButton(),
            ),
            */
            Pinned.fromPins(
              Pin(size: 135.0, start: 37.0), // Adjust these to suit your layout
              Pin(size: 50.0, middle: 0.7844), // Adjust these to suit your layout
              child: DropdownButton<String>(
                dropdownColor: const Color.fromARGB(255, 105, 99, 92),
                value: selectedUserType,
                icon: const Icon(Icons.arrow_downward, color: Colors.white,),
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
          ],
        ),
      );
    });
  }
}
