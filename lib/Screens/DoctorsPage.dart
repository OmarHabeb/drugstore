import 'package:drugstore/Widgets/data.dart';
import 'package:flutter/material.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(10),
            color: Color.fromARGB(255, 76, 76, 220),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                              child: Text(
                            "A",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello, wellcome",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 212, 212, 216)),
                            ),
                            Text("Amelia Khaled",
                                style: TextStyle(color: Colors.white))
                          ],
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white,
                          size: 30,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      fillColor: Color.fromARGB(255, 76, 76, 220),
                      filled: true,
                      hintText: "Search for Doctor. . . ",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 212, 212, 216)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                )
              ],
            ),
          )),
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: types_of_Diseases.length,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 10,
                          );
                        },
                        itemBuilder: (context, index) {
                          return Container(
                            width: 85,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 237, 237, 252),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                types_of_Diseases[index].toString(),
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
