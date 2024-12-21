import 'package:flutter/material.dart';
import 'note_item.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({super.key});
  final colorData =const [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => const NoteItem(),
      ),
    );
  }
}