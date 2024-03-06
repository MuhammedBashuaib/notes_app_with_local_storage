import 'package:flutter/material.dart';

import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/models/note_model.dart';
import 'package:notes_app_with_local_storge/views/widgets/color_list_view.dart';

class EditeNoteColorList extends StatefulWidget {
  const EditeNoteColorList({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<EditeNoteColorList> createState() => _EditeNoteColorListState();
}

class _EditeNoteColorListState extends State<EditeNoteColorList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kNoteColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightScreen * .037 * 2,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: kNoteColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ColorItem(
            onTap: () {
              currentIndex = index;
              widget.note.color = kNoteColors[index].value;
              setState(() {});
            },
            color: kNoteColors[index],
            isSelected: currentIndex == index ? true : false,
          );
        },
      ),
    );
  }
}
