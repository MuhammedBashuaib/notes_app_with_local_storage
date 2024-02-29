import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app_with_local_storge/views/widgets/custom_app_bar.dart';
import 'package:notes_app_with_local_storge/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).getAllNotes();
    super.initState();
  }

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
            title: "Notes",
            icon: Icons.search,
          ),
          SizedBox(
            height: heightScreen * .01,
          ),
          const Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
