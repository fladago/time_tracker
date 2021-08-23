import 'package:flutter/material.dart';
import 'package:time_tracker/common_widgets/custom_elevated_button.dart';

class SocialSignInButton extends CustomElevatedButton {
  SocialSignInButton({
    Key? key,
    required String assetName,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
  }) : super(
          key: key,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 15.0),
              ),
              Opacity(
                child: Image.asset(assetName),
                opacity: 0.0,
              ),
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}
