import 'package:drugstore/Screens/CategoriesPage.dart';
import 'package:drugstore/Screens/Doctors_StartingPage.dart';
import 'package:drugstore/Screens/LoginPage.dart';
import 'package:drugstore/Screens/SplashScreenPage.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drugstore',
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/': (context) => LoginPage(),
        '/splash': (context) => SplashScreenPage(),
        '/categories': (context) => CategoriesPage(),
        '/docstart': (context) => DoctorsStartingpage(),
      },
    );
  }
}
