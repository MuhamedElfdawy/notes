import 'package:flutter/material.dart';
import 'package:notes/Views/widgets/custom_app_bar.dart';
import 'package:notes/Views/widgets/custom_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(right: 24, left: 24, top: 16),
        child: Column(
          children: [
            // SizedBox(height: 16,),
            CustomAppBar(
              title: 'Title',
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
