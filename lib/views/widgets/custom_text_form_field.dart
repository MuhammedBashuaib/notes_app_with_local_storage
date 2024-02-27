import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final Function(String?)? onSaved;
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      onSaved: onSaved,
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
