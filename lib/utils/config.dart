// Set constant configuration
import 'package:flutter/material.dart';

class Config {
  static MediaQueryData ? mediaQueryData;
  static double ? screenWidth;
  static double ? screenHeight;

  // Initialize width and height
  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData!.size.width;
    screenHeight = mediaQueryData!.size.height;
  }

  static get widthSize {
    return screenWidth;
  }

  static get heightSize {
    return screenHeight;
  }

  // Define spacing height
  static const spaceSmall = SizedBox(height: 25,);
  static final spaceMedium = SizedBox(height: screenHeight! * 0.05);
  static final spaceLarge = SizedBox(height: screenHeight! * 0.08);

  // Text Form Field Border
  static const outlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );

  static const focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: Colors.greenAccent
    )
  );

  static const errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: Colors.red
    )
  );

  static const primaryColor = Colors.black;
}