import 'package:flutter/material.dart';
import 'package:task_abdeldmohsen/Screens/Main_Screen.dart';
import 'package:task_abdeldmohsen/core/Constans/Style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: MainScreen(numOfAdults: 0, numOfChildren: 0, numOfRooms: 0,),
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(),
    );
  }
}
