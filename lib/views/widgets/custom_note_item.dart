import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.kOrange,
        borderRadius: BorderRadius.circular(widthScreen * .03),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: widthScreen * .02,
        vertical: heightScreen * .03,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: EdgeInsets.only(bottom: heightScreen * .02),
              child: Text(
                "Flutter Tips",
                style: TextStyle(
                  color: MyColors.kBlack,
                  fontSize: fSize * 1.3,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(bottom: heightScreen * .02),
              child: Text(
                "This is notes app with local storage, test.",
                style: TextStyle(
                  color: MyColors.kBlack.withOpacity(.5),
                  fontSize: fSize * 1.2,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                size: heightScreen * .04,
                color: MyColors.kBlack,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: widthScreen * .04,
            ),
            child: Text(
              "May 21,2024",
              style: TextStyle(
                color: MyColors.kBlack.withOpacity(.5),
                fontSize: fSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
