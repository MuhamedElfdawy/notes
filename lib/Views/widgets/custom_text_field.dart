import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,this.maxLine = 1, this.onSaved, this.onChange});
  final String hint;
  final int maxLine;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true){
          return 'Field is required';
        }else {
          return null;
        }
      },
      cursorColor: primaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: primaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(primaryColor)

      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide:  BorderSide(
      color:color ?? Colors.white,
    ),
  );
}
