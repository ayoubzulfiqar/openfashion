import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final IconData? icon;
  final double width;
  final double height;
  final Color color;
  final Color textColor;
  final bool isShowing;
  const Button(
      {Key? key,
      required this.text,
      required this.isShowing,
      required this.textColor,
      this.icon,
      required this.width,
      required this.height,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primary: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(color: Colors.black),
          ),
          fixedSize: Size(width, height),
        ),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 16, color: textColor),
            ),
            const SizedBox(width: 10),
            if (isShowing == true) ...[
              Icon(icon),
            ] else ...[
              Container()
            ]
          ],
        )

        // child: Center(
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        // Text(
        //   text,
        //   style: TextStyle(fontSize: 16, color: textColor),
        // ),
        //       const SizedBox(width: 10),

        //     ],
        //   ),
        // ),
        );
  }
}
