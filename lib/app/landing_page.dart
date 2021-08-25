import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/home_page.dart';
import 'package:time_tracker/app/sign_in/sign_in_page.dart';
import 'package:time_tracker/services/auth.dart';

class LangingPage extends StatefulWidget {
  final AuthBase auth;

  const LangingPage({
    Key? key,
    required this.auth,
  }) : super(key: key);

  @override
  _LangingPageState createState() => _LangingPageState();
}

class _LangingPageState extends State<LangingPage> {
  User? _user;
  @override
  void initState() {
    super.initState();
    _updateUser(widget.auth.currentUser);
  }

  void _updateUser(User? user) {
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: widget.auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User? user = snapshot.data;
          if (user == null) {
            return SignInPage(
              auth: widget.auth,
              onSignIn: _updateUser,
            );
          }
          return HomePage(
            auth: widget.auth,
            onSignOut: () => _updateUser(null),
          );
        }
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
