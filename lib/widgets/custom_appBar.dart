import 'package:app_note/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.title, required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title
          ,
          style:const TextStyle(fontSize: 28),
        ),
        const Spacer(),
       CustomSearchIcon(icon:icon)
      ],
    );
  }
}