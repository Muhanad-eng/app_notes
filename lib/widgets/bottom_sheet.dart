import 'package:flutter/material.dart';

class CusttomBottomSheet extends StatelessWidget {
  const CusttomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2,
      
      decoration: BoxDecoration(
        //color: Colors.grey,
        
      
      ),
      child: Column(
        children: [
          TextField(),
          SizedBox(height:10),
          TextField(),
           SizedBox(height:20),
           MaterialButton(onPressed: (){})

        ],
      ),
    );
  }
}