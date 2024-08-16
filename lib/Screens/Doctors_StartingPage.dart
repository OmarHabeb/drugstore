import 'package:drugstore/Screens/DoctorsPage.dart';
import 'package:drugstore/Widgets/DrawerWidget.dart';
import 'package:flutter/material.dart';

class DoctorsStartingpage extends StatelessWidget {
  const DoctorsStartingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0XFF00B3B6), size: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          children: [
            Icon(Icons.monitor_heart_sharp),
            SizedBox(width: 10),
            Text("PharMisr"),
          ],
        ),
      ),
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Doctor's Helpline",
                    style: TextStyle(color: Color(0XFF00B3B6), fontSize: 25),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                      "Medical Advice: Seek professional advice about symptoms or health concerns."),
                  SizedBox(
                    height: 60,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/doctors');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0XFF012443),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      width: 170,
                      height: 40,
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Image.asset(
              "Images/docstart.jpg",
              fit: BoxFit.cover,
            ))
          ],
        ),
      ),
    );
  }
}
