import 'package:department/screens/profile/profile_screen.dart';
import 'package:department/widgets/widgets.dart';
import 'package:flutter/material.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    title: Row(
      children: [scoresPts(), const SizedBox(width: 10), scoresStar()],
    ),
    actions: [
      GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen(),)),
        child: const CircleAvatar(
            backgroundImage:
                NetworkImage('https://wallpaperaccess.com/thumb/5201235.jpg')),
      ),
      const SizedBox(width: 15)
    ],
  );
}
