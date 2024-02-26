import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/views/widgets/custom_app_bar.dart';
import 'package:notes_app_with_local_storge/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: widthScreen * .035,
        vertical: heightScreen * .01,
      ),
      child: Column(
        children: [
          SizedBox(
            height: heightScreen * .045,
          ),
          const CustomAppBar(
            title: "Edite Note",
            icon: Icons.check,
          ),
          SizedBox(
            height: heightScreen * .04,
          ),
          const CustomTextField(hintText: "Title"),
          SizedBox(
            height: heightScreen * 0.03,
          ),
          const CustomTextField(
            hintText: "Content",
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
