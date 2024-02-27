import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/views/widgets/custom_button.dart';
import 'package:notes_app_with_local_storge/views/widgets/custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: heightScreen * .035,
          ),
          CustomTextFormField(
            hintText: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: heightScreen * .02,
          ),
          CustomTextFormField(
            hintText: "Content",
            maxLines: 5,
            onSaved: (value) {
              content = value;
            },
          ),
          SizedBox(
            height: heightScreen * .1,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: heightScreen * .03,
          ),
        ],
      ),
    );
  }
}
