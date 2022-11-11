// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stddatabaseinfo/provider/contrastprovider.dart';
import 'package:stddatabaseinfo/screen/newstudent.dart';

class StudentList extends StatefulWidget {
  static const String routeName = '/studentlist';

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Student Info",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 30),
        ),
      ),
      body: Consumer<StudentContactProvider>(
        builder: (context, provider, _) => ListView.builder(
            itemCount: provider.contactList.length,
            itemBuilder: (context, index) {
              final contact = provider.contactList[index];
              return ListTile(
                title: Text(contact.st_name),
                subtitle: Text(contact.phone),
                trailing: IconButton(
                  icon: Icon(
                      contact.isFav ? Icons.favorite : Icons.favorite_border),
                  onPressed: () {
                    provider.updateFavorite(
                        contact.st_id!, contact.isFav, index);
                  },
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => NewStudent()));
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
