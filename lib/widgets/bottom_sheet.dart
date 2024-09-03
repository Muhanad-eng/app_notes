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
            CusttomTextField(),
            SizedBox(height:10),
            CusttomTextField(),
            SizedBox(height:20),
            MaterialButton(onPressed: (){})
      
          ],
      
      ),
    );
  }
}