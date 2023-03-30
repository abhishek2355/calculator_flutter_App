import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    this.heightofButton,
    this.colorsofButton,
    required this.textofbutton,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final double? heightofButton;
  final Color? colorsofButton;
  final String textofbutton;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    if (colorsofButton != null && heightofButton != null) {
      return SizedBox(
        height: media.height * heightofButton!,
        width: media.width * 104 / 428,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // <-- Radius
            ),
          ),
          onPressed: onTap,
          child: Text(
            textofbutton,
            style: TextStyle(
              fontSize: media.height * 50 / 926,
              color: Colors.white,
            ),
          ),
        ),
      );
    } else if (colorsofButton != null) {
      return Container(
        height: media.height * 110 / 926,
        width: media.width * 104 / 428,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // <-- Radius
            ),
          ),
          onPressed: onTap,
          child: Text(
            textofbutton,
            style: TextStyle(
              fontSize: media.height * 30 / 926,
              color: Colors.white,
            ),
          ),
        ),
      );
    } else {
      return SizedBox(
        height: media.height * 110 / 926,
        width: media.width * 104 / 428,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // <-- Radius
            ),
            backgroundColor: Colors.grey,
          ),
          onPressed: onTap,
          child: Text(
            textofbutton,
            style: TextStyle(
              fontSize: media.height * 30 / 926,
              color: Colors.white,
            ),
          ),
        ),
      );
    }
  }
}
