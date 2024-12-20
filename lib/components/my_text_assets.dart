import 'package:flutter/material.dart';

class MyTextAssets extends StatelessWidget {
  final String name;
  final String text;
  final void Function()? onTap;
  const MyTextAssets({
    super.key,
    required this.name,
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
              ClipOval(child: Image.asset(name, width: 25, height: 25,)),
              SizedBox(width: 9,),
              Text(text, style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
    );
  }
}