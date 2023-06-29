import 'package:flutter/material.dart';

Widget borderedButton() {
  return InkWell(
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFFFFCCB0), width: 2)
      ),
      padding: const EdgeInsets.all(15),
      child: const Text('Practice',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
    ),
  );
}
