import 'package:flutter/material.dart';
import 'package:full_project/screens/signin_screen.dart';
import 'package:full_project/screens/signup_screen.dart';

class Authenticate extends StatefulWidget {
  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignInScreen(toggleView);
    } else {
      return SignUpScreen(toggleView);
    }
  }
}
