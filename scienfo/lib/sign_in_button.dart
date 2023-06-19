import 'package:flutter/material.dart';
import 'package:scienfo/scienfo_content_page1.dart';
import './scienfo_login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  SignInButton(
      {Key? key,
      required this.emailController,
      required this.passwordController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Use GestureDetector instead of PageLink
      onTap: () async {
        try {
          UserCredential userCredential =
              await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
          );

          // Navigate to next screen if sign-in is successful
          if (userCredential.user != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScienfoContentPage1()),
            );
          }
        } on FirebaseAuthException catch (e) {
          String errorMessage;
          if (e.code == 'user-not-found') {
            errorMessage = 'No user found for that email.';
          } else if (e.code == 'wrong-password') {
            errorMessage = 'Wrong password provided for that user.';
          } else {
            errorMessage = "An unexpected error occured. Please try again.";
          }

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorMessage),
              duration: Duration(seconds: 2),
            ),
          );
        }
      },
      child: Stack(
        children: <Widget>[
          // Adobe XD layer: 'SignIn_button' (group)
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xfff36d7d),
                  borderRadius: BorderRadius.circular(25.0),
                  border:
                      Border.all(width: 2.0, color: const Color(0xffffffff)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xa0c9274d),
                      offset: Offset(0, 8),
                      blurRadius: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment(-0.002, 0.063),
            child: SizedBox(
              width: 50.0,
              height: 21.0,
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  height: 1.0625,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
