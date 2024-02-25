import 'package:flutter/material.dart';

//my colors
//////////////////////////////////////////////////////////////
class MyColors {
  static const Color kPrimaryColor = Color(0xff62FCD7);
  static const Color kWhite = Colors.white;
  static const Color kOrange = Color(0xffFFCC80);
  static const Color kBlack = Colors.black;
}
//////////////////////////////////////////////////////////////

//Screen coordinates and the default size of the font
//////////////////////////////////////////////////////////////
double widthScreen = 0;
double heightScreen = 0;
double fSize = 0;

initializeHWFSize(BuildContext context) {
  widthScreen = MediaQuery.of(context).size.width;
  heightScreen = MediaQuery.of(context).size.height;
  fSize = widthScreen / 25;
}
//////////////////////////////////////////////////////////////

//My routes
///////////////////////////////////////////////
class MyRoutes {}
