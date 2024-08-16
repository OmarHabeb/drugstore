import 'package:drugstore/Screens/CategoriesPage.dart';
import 'package:drugstore/Screens/SplashScreen.dart';
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
        home: SplashScreen());
  }
}
