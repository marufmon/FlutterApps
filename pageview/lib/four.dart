// ignore_for_file: unnecessary_import, implementation_imports, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Four extends StatelessWidget {
  const Four({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey,
            pinned: true,
            centerTitle: true,
            expandedHeight: MediaQuery.of(context).size.width * 1.5,
            title: Text("Lal Pori"),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Color.fromARGB(181, 0, 0, 0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.school,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      " Studied at Departman of CSE,DIU-Dhaka International University",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.school,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      " Studied at Gaibandha Govt.College,Gaibandha",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      " Live in Gaibandha,Bangladesh",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_city,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      " From Rangpur Dhaka,Bangladesh",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      " Single",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      " Maruf is her cute & sweet friend",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      " 01831628697",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.facebook,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      " Lal Pori",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      " lalpori407@gmail.com",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.facebook,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      " Lal Pori",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.whatsapp,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      " Lal koli",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.music_note,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      " Minar",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.people,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      " Friends",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
