import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: MyColors.kPrimaryColor,
      decoration: InputDecoration(
        hintText: "Title",
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
