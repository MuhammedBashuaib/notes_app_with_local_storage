import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/views/widgets/custom_app_bar.dart';
import 'package:notes_app_with_local_storge/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
          const CustomAppBar(),
          SizedBox(
            height: heightScreen * .008,
          ),
          const Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
