import 'package:app_note/bloc_observer.dart';
import 'package:app_note/costants/constants.dart';
import 'package:app_note/cubits/add%20note%20cubit/add_note_cubit.dart';
import 'package:app_note/model/note_model.dart';
import 'package:app_note/views/notes_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
  Bloc.observer = BlocObserverSample();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
          home: const NotesView()),
    );
  }
}
