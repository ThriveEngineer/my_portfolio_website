import 'package:flutter/material.dart';

class MyTextIcon extends StatelessWidget {
  final IconData? icon;
  final String text;
  final void Function()? onTap;
  const MyTextIcon({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              Icon(icon, color: Colors.white, size: 30,),
              SizedBox(width: 9,),
              Text(text, style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
    );
  }
}