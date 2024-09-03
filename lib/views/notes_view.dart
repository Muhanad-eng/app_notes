import 'package:app_note/widgets/note_body.dart';
import 'package:app_note/widgets/note_item.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_search_icon.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child:const Icon(Icons.add),),
      body:NoteBody()
    );
  }
}

