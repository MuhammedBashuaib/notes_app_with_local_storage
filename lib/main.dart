import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:notes_app_with_local_storge/const.dart';
import 'package:notes_app_with_local_storge/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app_with_local_storge/models/note_model.dart';
import 'package:notes_app_with_local_storge/simple_bloc_observer.dart';
import 'package:notes_app_with_local_storge/views/edit_note_view.dart';
import 'package:notes_app_with_local_storge/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(MyHiveConstent.kNotesBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    initializeHWFSize(context);
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Poppins",
        ),
        routes: {
          MyRoutes.notesView: (context) => const NotesView(),
          MyRoutes.editNoteView: (context) => const EditNoteView(),
        },
        initialRoute: MyRoutes.notesView,
      ),
    );
  }
}
