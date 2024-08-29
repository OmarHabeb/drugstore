import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: Text("Profile", style: TextStyle(color: Colors.white),),centerTitle: true, foregroundColor: Colors.white,
  backgroundColor: Colors.transparent,    
      
      ),
      body: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Amelia Khaled'),
            accountEmail: Text('Amelia@Gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                'A',
                style: TextStyle(fontSize: 40.0, color: Colors.black),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 76, 76, 220),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Color(0XFF101010),),
            title: const Text('Home'),
            trailing: Icon(Icons.arrow_right),

            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Color(0XFF101010)),
            title: const Text('Settings'),
            trailing: Icon(Icons.arrow_right, ),

            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Spacer(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),


    );
  }
}