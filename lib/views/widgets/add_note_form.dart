import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_with_local_storge/models/note_model.dart';
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
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoding: state is AddNoteLoding ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    NoteModel noteModel = NoteModel(
                        title: title!,
                        content: content!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
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
