import 'package:app_note/widgets/custom_appBar.dart';
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
          CustomAppBar(title: 'Edit Note', icon: Icons.check,)
          ]
        ),
      ) ,

    );
  }
}