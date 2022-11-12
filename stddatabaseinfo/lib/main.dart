import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stddatabaseinfo/provider/contrastprovider.dart';
import 'package:stddatabaseinfo/screen/newstudent.dart';
import 'package:stddatabaseinfo/screen/studendetails.dart';
import 'package:stddatabaseinfo/screen/studentlist.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
        create: (context) => StudentContactProvider()..getAllContacts())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: StudentList.routeName,
      routes: {
        NewStudent.routeName: (context) => NewStudent(),
        StudentList.routeName: (context) => StudentList(),
        StudentDetails.routeName: ((context) => StudentDetails()),
      },
    );
  }
}
