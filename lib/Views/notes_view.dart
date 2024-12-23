import 'package:flutter/material.dart';
import 'package:notes/constants.dart';
import 'package:notes/Views/widgets/add_note_bottom_sheet.dart';
import 'package:notes/Views/widgets/notes_view_body.dart';


class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => const CustomAddNoteSheet(),
          );
        },
        backgroundColor: primaryColor,
        child: const Icon(Icons.add, color: Colors.black,),
      ),
    );
  }
}
