import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_with_local_storge/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: widthScreen * .02,
      ),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print("failure is ${state.erorrMessage}");
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoding ? true : false,
            child: const SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: AddNoteForm(),
            ),
          );
        },
      ),
    );
  }
}
