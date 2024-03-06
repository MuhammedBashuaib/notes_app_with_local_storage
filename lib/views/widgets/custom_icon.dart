import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  const CustomIcon({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightScreen * .048,
      width: widthScreen * .1,
      decoration: BoxDecoration(
        color: MyColors.kWhite.withOpacity(.1),
        borderRadius: BorderRadius.circular(widthScreen * .03),
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            size: heightScreen * .03,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
