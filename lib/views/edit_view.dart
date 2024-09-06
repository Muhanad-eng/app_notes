import 'package:app_note/widgets/custom_appBar.dart';
import 'package:app_note/widgets/custtom_text_field.dart';
import 'package:flutter/material.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Padding(
        padding: EdgeInsets.only(top:28,right: 16,left: 16),
        child: Column(
          children: [
          CustomAppBar(title: 'Edit Note', icon: Icons.check,),
          SizedBox(height: 50),
          CusttomTextField(hintText: "title"),
          SizedBox(height: 20,),
          CusttomTextField(hintText: "content",maxLines: 5,)
          ]
        ),
      ) ,

    );
  }
}