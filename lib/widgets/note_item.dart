import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16,bottom:16),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(16),
      ),
      child:const Padding(
        padding:  EdgeInsets.only(top:24,bottom: 24),
        child: Column(
          children: [
            ListTile(
              title: Text("Learn Flutter",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
              subtitle: Padding(
                padding: EdgeInsets.only(top:16),
                child: Text("the best frame work now days",style: TextStyle(color: Colors.black)),
              ),
              trailing: Icon(FontAwesomeIcons.trash),
              ),
              Padding(
                padding: EdgeInsets.only(right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Sep-2024",style: TextStyle(color: Colors.black)),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}