import 'package:department/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    systemNavigationBarColor: Colors.grey[50], // navigation bar color
    statusBarColor: Colors.grey[50], // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ADB',
      theme: ThemeData(
        fontFamily: 'Montserrat',
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.grey[50],
          appBarTheme: AppBarTheme(
            color: Colors.grey[50],
            elevation: 0,
          )),
      debugShowCheckedModeBanner: false,
      home: const Nav(),
    );
  }
}
