import 'package:flutter/material.dart';
import 'package:notes/Views/widgets/custom_text_field.dart';

class CustomAddNoteSheet extends StatelessWidget {
  const CustomAddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        children: [
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(height: 16,),
          CustomTextField(
            hint: 'Content',
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
