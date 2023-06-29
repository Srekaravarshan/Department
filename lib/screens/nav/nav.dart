import 'package:flutter/material.dart';

import '../screens.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _idx = 2;

  List<Widget> pages = [
    const QuizScreen(),
    const PlacementScreen(),
    const HomeScreen(),
    const FacultyScreen(),
    const MaterialsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_idx),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.quiz_outlined), label: 'Quiz'),
          BottomNavigationBarItem(
              icon: Icon(Icons.self_improvement_outlined), label: 'Placement'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.school_outlined), label: 'Faculty'),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined), label: 'Materials'),
        ],
        elevation: 10,
        type: BottomNavigationBarType.shifting,
        currentIndex: _idx,
        selectedItemColor: Color(0xFFE65100),
        selectedLabelStyle: const TextStyle(color: Color(0xFFE65100)),
        unselectedItemColor: Colors.black45,
        onTap: (value) => setState(() {
          _idx = value;
        }),
      ),
    );
  }
}
