import 'package:flutter/material.dart';

//my colors
//////////////////////////////////////////////////////////////
class MyColors {
  static const Color kPrimaryColor = Color(0xff62FCD7);
  static const Color kWhite = Colors.white;
  static const Color kOrange = Color(0xffFFCC80);
  static const Color kBlack = Colors.black;
  static const Color kBlack54 = Colors.black54;
}

const List<Color> kNoteColors = [
  Color(0xffAC3931),
  Color(0xffE5D352),
  Color(0xffD9E76C),
  Color(0xff537D8D),
  Color(0xff482C3D),
];
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
class MyRoutes {
  static const String notesView = "/";
  static const String editNoteView = "editNoteView";
}
///////////////////////////////////////////////

//My routes
///////////////////////////////////////////////
class MyHiveConstent {
  static const String kNotesBox = "note_box";
}
