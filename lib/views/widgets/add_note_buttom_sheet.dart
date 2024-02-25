import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/views/widgets/custom_button.dart';
import 'package:notes_app_with_local_storge/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: widthScreen * .02,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: heightScreen * .035,
            ),
            const CustomTextField(
              hintText: "Title",
            ),
            SizedBox(
              height: heightScreen * .02,
            ),
            const CustomTextField(
              hintText: "Content",
              maxLines: 5,
            ),
            SizedBox(
              height: heightScreen * .1,
            ),
            const CustomButton(),
            SizedBox(
              height: heightScreen * .03,
            ),
          ],
        ),
      ),
    );
  }
}
