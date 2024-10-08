import 'package:app_note/costants/constants.dart';
import 'package:flutter/material.dart';

class CusttomTextField extends StatelessWidget {
  const CusttomTextField(
      {super.key, required this.hintText, this.maxLines = 1, this.onSaved});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: outlineBorder(),
          enabledBorder: outlineBorder(),
          focusedBorder: outlineBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder outlineBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
