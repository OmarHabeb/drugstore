import 'package:drugstore/Screens/CategoriesPage.dart';
import 'package:drugstore/Screens/DoctorsPage.dart';
import 'package:drugstore/Screens/Doctors_StartingPage.dart';
import 'package:drugstore/Screens/LoginPage.dart';
import 'package:drugstore/Screens/SplashScreenPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(350, 850),
      child: MaterialApp(
        title: 'Drugstore',
        debugShowCheckedModeBanner: false,
        initialRoute: '/categories',
        routes: {
          '/': (context) => const LoginPage(),
          '/splash': (context) => const SplashScreenPage(),
          '/categories': (context) => const CategoriesPage(),
          '/docstart': (context) => const DoctorsStartingpage(),
          '/doctors': (context) => const DoctorPage(),
        },
      ),
    );
  }
}
