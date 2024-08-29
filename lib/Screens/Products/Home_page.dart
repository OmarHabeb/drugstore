import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home_page_products extends StatefulWidget {
  const Home_page_products({super.key});

  @override
  State<Home_page_products> createState() => _Home_page_productsState();
}

class _Home_page_productsState extends State<Home_page_products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 237, 237, 252),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                         
                          width: 40.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(child: Text("A" , style: TextStyle(fontSize: 25),)),
                        ),
                        Icon(Icons.notifications_none , color: Colors.black, size: 30,) 

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}