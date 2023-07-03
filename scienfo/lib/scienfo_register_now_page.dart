import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:scienfo/gradient_background.dart';
import './register_now_button.dart';
import './scienfo_content_page1.dart';
import './scienfo_logo.dart';
import './welcome_text.dart';
import './email_input.dart';
import './password_input.dart';

class ScienfoRegisterNowPage extends StatefulWidget {
  ScienfoRegisterNowPage({Key? key}) : super(key: key);

  @override
  _ScienfoRegisterNowPageState createState() => _ScienfoRegisterNowPageState();
}

class _ScienfoRegisterNowPageState extends State<ScienfoRegisterNowPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String? selectedUserType;

  @override
  void initState() {
    super.initState();
    selectedUserType = null; // update this line
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
        body: GradientBackground(
          child: Stack(
            children: <Widget>[
              Pinned.fromPins(
                Pin(start: 37.0, end: 35.0),
                Pin(size: 50.0, end: 50.0),
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
                      '',
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
            ],
          ),
        ),
      );
    });
  }
}
