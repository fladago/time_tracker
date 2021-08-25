import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/sign_in_page.dart';

class LangingPage extends StatefulWidget {
  const LangingPage({Key? key}) : super(key: key);

  @override
  _LangingPageState createState() => _LangingPageState();
}

class _LangingPageState extends State<LangingPage> {
  User? _user;
  void _updateUser(User? user) {
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInPage(
        onSignIn: _updateUser,
      );
    }
    return Container();
  }
}
