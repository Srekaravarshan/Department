import 'package:flutter/material.dart';

Widget scoresPts() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.orange[100],
      borderRadius: const BorderRadius.all(Radius.circular(6)),
        border: Border.all(width: 2, color: const Color(0xFFFFCCB0))
    ),
    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
    child: const Text(
      '124 pts',
      style: TextStyle(fontSize: 16,
          fontFamily: 'Merriweather', color: Color(0xFFE65100)),
    ),
  );
}

Widget scoresStar() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.all(Radius.circular(6)),
      border: Border.all(width: 2, color: const Color(0xFFFFCCB0))
    ),
    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
    child: Row(
      children: const [
        Text(
          '11',
          style: TextStyle(fontSize: 16,
              fontFamily: 'Merriweather', color: Color(0xFFE65100)),
        ),
        SizedBox(width: 2),
        Icon(Icons.star, color: Color(0xFFE65100))
      ],
    ),
  );
}
