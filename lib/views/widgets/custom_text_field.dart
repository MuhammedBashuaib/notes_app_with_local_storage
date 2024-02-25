import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: MyColors.kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: MyColors.kPrimaryColor,
        ),
        border: buildBorder(),
        focusedBorder: buildBorder(MyColors.kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widthScreen * .02),
      borderSide: BorderSide(
        color: color ?? MyColors.kWhite,
        width: 1.5,
      ),
    );
  }
}
