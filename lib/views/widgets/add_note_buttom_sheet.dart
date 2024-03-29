import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_with_local_storge/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app_with_local_storge/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {}
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
            BlocProvider.of<NotesCubit>(context).getAllNotes();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoding ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                right: widthScreen * .02,
                left: widthScreen * .02,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
