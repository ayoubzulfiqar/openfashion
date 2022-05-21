import 'package:flutter/material.dart';

Widget chips(BuildContext context) {
  List<String> chipsText = ["Fashion", "Promo", "Lookbook", "Policy", "Sale"];

  return Padding(
    padding: const EdgeInsets.all(8),
    child: Chip(
      label: Text(chipsText.elementAt(0)),
      labelPadding: const EdgeInsets.all(3),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      backgroundColor: Colors.grey.withOpacity(0.10),
    ),
  );
}
