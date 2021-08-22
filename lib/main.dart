import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/sign_in_page.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time tracker',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const SignInPage(),
    );
  }
}
