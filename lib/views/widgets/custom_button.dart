import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final bool isLoding;
  const CustomButton({
    super.key,
    this.onTap,
    this.isLoding = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: heightScreen * .07,
        decoration: BoxDecoration(
          color: MyColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(widthScreen * .03),
        ),
        child: Center(
          child: isLoding
              ? SizedBox(
                  height: heightScreen * .03,
                  width: widthScreen * .065,
                  child: const CircularProgressIndicator(
                    color: MyColors.kBlack54,
                  ),
                )
              : Text(
                  "Add",
                  style: TextStyle(
                    color: MyColors.kBlack,
                    fontSize: fSize * 1.3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
