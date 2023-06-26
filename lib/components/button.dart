import 'package:bsd_maintenance/utils/config.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
    {Key ? key, 
    required this.width, 
    required this.title, 
    required this.onPressed, 
    required this.disabled
    }) 
    : super(key : key);

  final double width;
  final String title;
  final bool disabled;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom (
          backgroundColor: Config.primaryColor,
          foregroundColor: Colors.white
        ),
        onPressed: disabled ? null : onPressed,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          )
        )
      )
    );
  }
}