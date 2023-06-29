import 'package:department/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FacultyDetails extends StatelessWidget {
  final Map faculty;

  FacultyDetails({Key? key, required this.faculty}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          faculty['name'],
          style: const TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            color: Colors.blue,
            onPressed: () => Navigator.pop(context)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFFAFAFA), Colors.white],
                      begin: Alignment(0, -1),
                      end: Alignment(0, 0))),
              child: Column(
                children: [
                  Row(
                    children: const [
                      CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://wallpaperaccess.com/thumb/5201235.jpg')),
                    ],
                  ),
                  Row(
                    children: const [],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
