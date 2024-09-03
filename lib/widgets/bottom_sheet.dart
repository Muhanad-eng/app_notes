import 'package:app_note/widgets/custom_button.dart';
import 'package:app_note/widgets/custtom_text_field.dart';
import 'package:flutter/material.dart';

class CusttomBottomSheet extends StatelessWidget {
  const CusttomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(   
            children: [
            CusttomTextField(
                hintText: "Title",
              ),
            SizedBox(height:10),
           CusttomTextField(
                hintText: "Content",
                maxLines: 5,
              ),
             SizedBox(height:20),
             CustomButton(text: "Add")
        
            ],
        
        ),
      ),
    );
  }
}