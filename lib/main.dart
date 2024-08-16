<<<<<<< Updated upstream
import 'package:drugstore/Screens/CategoriesPage.dart';
import 'package:drugstore/Screens/SplashScreen.dart';
=======
import 'package:drugstore/Screens/SplashScreenPage.dart';
>>>>>>> Stashed changes
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< Updated upstream
        title: 'Drugstore',
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
=======
      title: 'Drugstore',
 debugShowCheckedModeBanner: false,
      home:SplashScreenPage(),
    );
>>>>>>> Stashed changes
  }
}
