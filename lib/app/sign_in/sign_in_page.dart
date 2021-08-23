import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/sign_in_button.dart';
import 'package:time_tracker/app/sign_in/social_sign_in_button.dart';
import 'package:time_tracker/common_widgets/custom_elevated_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('Time Tracker'),
        centerTitle: true,
        elevation: 2.0,
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 48.0),
          SocialSignInButton(
              assetName: 'assets/images/google-logo.png',
              text: 'Sign in with Google',
              textColor: Colors.black87,
              color: Colors.white,
              onPressed: () {}),
          const SizedBox(height: 8.0),
          SocialSignInButton(
              assetName: 'assets/images/facebook-logo.png',
              text: 'Sign in with Facebook',
              textColor: Colors.white,
              color: const Color(0xFF334D92),
              onPressed: () {}),
          const SizedBox(height: 8.0),
          SignInButton(
              text: 'Sign in with email',
              textColor: Colors.white,
              color: Colors.teal.shade700,
              onPressed: () {}),
          const SizedBox(height: 8.0),
          const Text(
            'or',
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8.0),
          SignInButton(
              text: 'Go anonymouse',
              textColor: Colors.black,
              color: Colors.lime.shade300,
              onPressed: () {}),
        ],
      ),
    );
  }
}
