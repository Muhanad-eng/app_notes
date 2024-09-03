import 'package:app_note/widgets/custtom_text_field.dart';
import 'package:flutter/material.dart';

class CusttomBottomSheet extends StatelessWidget {
  const CusttomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(   
          children: [
           const CusttomTextField(
              hintText: "Title",
            ),
           const SizedBox(height:10),
         const  CusttomTextField(
              hintText: "Content",
              maxLines: 5,
            ),
            SizedBox(height:20),
            MaterialButton(onPressed: (){})
      
          ],
      
      ),
    );
  }
}