import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;
  final double? sizedBox;
  const MyButton({
    super.key,
    required this.sizedBox,
    required this.text,
    required this.icon,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(255, 28, 27, 26),
          border: Border.all(color: Color.fromARGB(255, 40, 39, 38)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Icon(icon,
              color: Colors.white,
              ),
              SizedBox(width: sizedBox),
              Text(text, 
              style: TextStyle(
                color: Colors.white
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}