import 'package:drugstore/Widgets/DrawerWidget.dart';
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
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue, size: 40),
        actions: [
          Icon(
            Icons.home,
            color: Colors.black,
          )
        ],
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.only(right: 20, left: 20),
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        fillColor: Colors.grey[300],
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Catetories",
                    style: TextStyle(color: Colors.blue, fontSize: 25),
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            color: Colors.blue,
          ))
        ],
      ),
    );
  }
}
