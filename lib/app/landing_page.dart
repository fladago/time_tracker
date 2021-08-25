import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/sign_in_page.dart';

class LangingPage extends StatefulWidget {
  const LangingPage({Key? key}) : super(key: key);

  @override
  _LangingPageState createState() => _LangingPageState();
}

class _LangingPageState extends State<LangingPage> {
  @override
  Widget build(BuildContext context) {
    return const SignInPage();
  }
}
