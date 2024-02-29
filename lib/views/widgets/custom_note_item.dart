import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/models/note_model.dart';

class CustomNoteItem extends StatelessWidget {
  final Function()? onTap;
  final NoteModel noteModel;
  const CustomNoteItem({
    super.key,
    this.onTap,
    required this.noteModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(noteModel.color),
          borderRadius: BorderRadius.circular(widthScreen * .03),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: widthScreen * .02,
          vertical: heightScreen * .03,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: heightScreen * .02),
                child: Text(
                  noteModel.title,
                  style: TextStyle(
                    color: MyColors.kBlack,
                    fontSize: fSize * 1.3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(bottom: heightScreen * .02),
                child: Text(
                  noteModel.content,
                  style: TextStyle(
                    color: MyColors.kBlack.withOpacity(.5),
                    fontSize: fSize * 1.2,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  size: heightScreen * .04,
                  color: MyColors.kBlack,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: widthScreen * .04,
              ),
              child: Text(
                noteModel.date,
                style: TextStyle(
                  color: MyColors.kBlack.withOpacity(.5),
                  fontSize: fSize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
