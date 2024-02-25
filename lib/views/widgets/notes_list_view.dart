import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      itemCount: 100,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: heightScreen * .01,
          ),
          child: const CustomNoteItem(),
        );
      },
    );
  }
}
