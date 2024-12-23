import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Views/edit_note_view.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditNoteView(
              note: note,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  note.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              subtitle: Text(
                note.subTitle,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 25,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, top: 8),
              child: Text(
                note.date,
                style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
