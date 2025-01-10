import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Views/widgets/custom_app_bar.dart';
import 'package:notes/Views/widgets/custom_list_view.dart';
import 'package:notes/Views/widgets/custom_search.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24, top: 16),
        child: Column(
          children: [
            const SizedBox(height: 16,),
            CustomAppBar(
              title: 'Notes',
              icon: Icons.search,
              onPressed: (){
                showSearch(
                    context: context,
                    delegate: CustomSearch()
                );
              },
            ),
            const Expanded(
              child: CustomNotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}

