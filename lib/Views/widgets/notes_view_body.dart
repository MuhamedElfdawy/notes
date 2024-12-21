import 'package:flutter/material.dart';
import 'package:notes/Views/widgets/custom_app_bar.dart';
import 'package:notes/Views/widgets/custom_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  // @override
  // void initSate(){
  //   BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(right: 24, left: 24, top: 16),
        child: Column(
          children: [
            // SizedBox(height: 16,),
            CustomAppBar(
              title: 'Notes',
              icon: Icons.search,
            ),
            Expanded(
              child: CustomNotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}
