import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  getAllNotes() async {
    emit(NotesLoding());
    try {
      var notesBox = Hive.box<NoteModel>(MyHiveConstent.kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notes: notes));
    } catch (e) {
      emit(NotesFailure(erorrMessage: e.toString()));
    }
  }
}
