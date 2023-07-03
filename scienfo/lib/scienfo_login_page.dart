import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:scienfo/scienfo_logo.dart';
import './email_input.dart';
import './password_input.dart';
import './sign_in_button.dart';
import 'package:scienfo/gradient_background.dart';

class ScienfoLoginPage extends StatelessWidget {
  ScienfoLoginPage({
    Key? key,
  }) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Stack(
          children: <Widget>[
            Pinned.fromPins(
              Pin(start: 37.0, end: 50.7),
              Pin(size: 42.9, middle: 0.6264),
              child:
                  // Adobe XD layer: 'Email_input' (component)
                  EmailInput(emailController: emailController),
            ),
            Pinned.fromPins(
              Pin(start: 37.0, end: 50.7),
              Pin(size: 43.0, middle: 0.7339),
              child:
                  // Adobe XD layer: 'Password_input' (component)
                  PasswordInput(passwordController: passwordController),
            ),
            Pinned.fromPins(
              Pin(start: 76.0, end: 76.0),
              Pin(size: 215.0, start: 40.0),
              child:
                  // Adobe XD layer: 'ScienfoLogo' (component)
                  ScienfoLogo(),
            ),
            Pinned.fromPins(
                Pin(start: 37.0, end: 47.0), Pin(size: 50.0, end: 25.0),
                child: SignInButton(
                  emailController: emailController,
                  passwordController: passwordController,
                )),
          ],
        ),
      ),
    );
  }
}
