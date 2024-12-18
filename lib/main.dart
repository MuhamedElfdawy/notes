import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/Views/notes_view.dart';
import 'package:notes/constants.dart';

void main() async{

  await Hive.initFlutter();
  Hive.openBox(notesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const NotesView(),
    );
  }
}
