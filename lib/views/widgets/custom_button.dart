import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: heightScreen * .07,
      decoration: BoxDecoration(
        color: MyColors.kPrimaryColor,
        borderRadius: BorderRadius.circular(widthScreen * .03),
      ),
      child: Center(
        child: Text(
          "Add",
          style: TextStyle(
            color: MyColors.kBlack,
            fontSize: fSize * 1.3,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
