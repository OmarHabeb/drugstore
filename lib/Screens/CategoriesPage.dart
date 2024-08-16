import 'package:drugstore/Widgets/DrawerWidget.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white, size: 30),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        drawer: CustomDrawer(),
        body: Column(
          children: [
            Expanded(
              child: Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  width: double.infinity,
                  color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 75),
                      Text('Hello, \nAmelia',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "What are you looking for?",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 3,
                            )),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          "Get special offer",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 330,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0XFF00B0AF),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text("Yarb 7amota yb3t"),
                        ),
                      )
                    ],
                  )),
            ),
            Expanded(
                child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Stack(children: [
                    Text(
                      "Categories",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 100,
                        height: 2,
                        color: Colors.black,
                      ),
                    ),
                  ]),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF4C73D3),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                  height: 87,
                                  width: double.infinity,
                                  child: Image.asset(
                                    "Images/pills.png",
                                    fit: BoxFit.cover,
                                  )),
                              Text(
                                "Medical",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/docstart');
                        },
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF00B3B6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                  height: 87,
                                  width: double.infinity,
                                  child: Image.asset(
                                    "Images/doc.png",
                                    fit: BoxFit.cover,
                                  )),
                              Text(
                                "Doctors",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF56789),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                              height: 87,
                              width: double.infinity,
                              child: Image.asset(
                                "Images/beauty.png",
                                fit: BoxFit.cover,
                              )),
                          Text(
                            "Beauty",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ));
  }
}
