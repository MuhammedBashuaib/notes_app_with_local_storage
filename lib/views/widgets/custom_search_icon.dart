import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
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
        child: Icon(
          Icons.search,
          size: heightScreen * .03,
        ),
      ),
    );
  }
}
