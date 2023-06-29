import 'package:flutter/material.dart';

Widget quizCard({bool prior = false}) {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              blurRadius: 20, color: Colors.black12, offset: Offset(0, 10))
        ],
        color: prior ? Colors.orange[100] : Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: prior ? Colors.white : const Color(0xFFFFCCB0), width: 2)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        quizTop(),
        const SizedBox(height: 10),
        const Text('Pattern',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        const Text('Boats and Streams',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        const Text('C Coding',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        quizBottom()
      ],
    ),
  );
}

Widget quizTop() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Daily Quiz',
          style: TextStyle(
              fontFamily: 'Merriweather',
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.orange[900])),
      Row(
        children: [
          Text('Difficult',
              style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 15,
                  color: Colors.orange[900])),
          const SizedBox(width: 10),
          Text('3 pts',
              style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 15,
                  color: Colors.orange[900])),
          const SizedBox(width: 10),
          Icon(
            Icons.star,
            color: Colors.orange[900],
          )
        ],
      )
    ],
  );
}

Widget quizBottom() {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.orange[900],
        elevation: 0,
        minimumSize: const Size.fromHeight(50), // NEW
      ),
      onPressed: null,
      child: const Text('Completed 100%'));
}
