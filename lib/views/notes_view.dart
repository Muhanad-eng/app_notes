import 'package:app_note/widgets/note_item.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_search_icon.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:const  EdgeInsets.only(top:28,right: 16,left: 16),
        child: Column(
          children: [
          const  Row(
              children: [
               Text("Notes",style: TextStyle(fontSize: 28),),
                Spacer(),
                CustomSearchIcon()
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) =>const NoteItem() ,),
            )
        
          ],
        ),
      ),
    );
  }
}

