import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';

import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  getAllNotes() {
    var notesBox = Hive.box<NoteModel>(MyHiveConstent.kNotesBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
