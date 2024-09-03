import 'package:app_note/widgets/custom_appBar.dart';
import 'package:app_note/widgets/note_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoteBody extends StatelessWidget {
  const NoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28, right: 16, left: 16),
      child: Column(
        children: [
         const CustomAppBar(title: 'Notes', icon: Icons.search,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: 10,
                itemBuilder: (context, index) => const NoteItem(),
              ),
            ),
          )
        ],
      ),
    );
  }
}


