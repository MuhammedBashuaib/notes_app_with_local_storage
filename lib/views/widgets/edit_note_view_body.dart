import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app_with_local_storge/models/note_model.dart';
import 'package:notes_app_with_local_storge/views/widgets/custom_app_bar.dart';
import 'package:notes_app_with_local_storge/views/widgets/custom_text_form_field.dart';
import 'package:notes_app_with_local_storge/views/widgets/edit_note_color_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel note;
  const EditNoteViewBody({
    super.key,
    required this.note,
  });

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
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
          CustomAppBar(
            title: "Edite Note",
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).getAllNotes();
              Navigator.of(context).pop();
            },
          ),
          SizedBox(
            height: heightScreen * .04,
          ),
          CustomTextFormField(
            hintText: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: heightScreen * 0.03,
          ),
          CustomTextFormField(
            hintText: widget.note.content,
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          ),
          SizedBox(
            height: heightScreen * .04,
          ),
          EditeNoteColorList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
