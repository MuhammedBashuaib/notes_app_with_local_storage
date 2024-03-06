import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/models/note_model.dart';
import 'package:notes_app_with_local_storge/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    NoteModel note = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Scaffold(
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
