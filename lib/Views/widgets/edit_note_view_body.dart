import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Views/notes_view.dart';
import 'package:notes/Views/widgets/custom_app_bar.dart';
import 'package:notes/Views/widgets/custom_text_field.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24, top: 16),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
              onChange: (value) {
                title = value;
              },
              hint: widget.note.title,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChange: (value){
                content = value;
              },
              hint: widget.note.subTitle,
              maxLine: 5,
            ),
          ],
        ),
      ),
    );
  }
}
