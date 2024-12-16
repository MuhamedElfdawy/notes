import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes/Views/widgets/custom_app_bar.dart';
import 'package:notes/Views/widgets/custom_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: CustomNotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}


