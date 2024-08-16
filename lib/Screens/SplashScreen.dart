import 'package:drugstore/Screens/CategoriesPage.dart';
import 'package:drugstore/Screens/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SlpashScreenState();
}
class _SlpashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              "Images/Doctor_Splash.json",
              repeat: false,
              onLoaded: (p0) => Future.delayed(p0.duration, () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => CategoriesPage()));
              }),
            ),
            Text("Welcome In Your Drugstore" , style: TextStyle(color: Colors.white , fontSize: 20 ,fontWeight: FontWeight.bold),)
          ],
        ),
      
    );
  }
}
