import 'package:day12/onemodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 22, 0, 22),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(right: 25),
                title: Text(
                  "\$7000",
                  style: myStyle(20, Colors.black87),
                ),
                subtitle: Text(
                  "July earnig",
                  style: myStyle(14, Colors.black38),
                ),
                trailing: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 236, 225, 225)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 17,
                        backgroundImage: NetworkImage(
                            "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/298267792_1432047977218490_2040140291139212763_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEk6TV8008OTBxZqqiZLrqXvZHW9p1MI469kdb2nUwjjloubnKBuuBy_QJ1KJzVkGmudMbJD7KXR61cRDWdKdzu&_nc_ohc=uzb-jkJJMcYAX9LeSh4&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_-sS3tCDqBjXp8MDv2flWanc1ldoETK8jLZvnmpKjs8w&oe=634C7246"),
                      ),
                      Text(
                        " :",
                        style: myStyle(22, Colors.black, FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 30, 45, 30),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white),
                      child: Text(
                        "week",
                        style: myStyle(14, Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white),
                      child: Text(
                        "Month",
                        style: myStyle(14, Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white),
                      child: Text(
                        "Years",
                        style: myStyle(14, Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Upcoming Bills",
                style: myStyle(16, Colors.black38),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Center(child: Text("22 June 2022")),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blueGrey),
                                  child: ListTile(
                                      title: Text(
                                        "Evernote",
                                        style: myStyle(14, Colors.black54),
                                      ),
                                      subtitle: Text(
                                        "\$9.50",
                                        style: myStyle(16, Colors.black),
                                      ),
                                      trailing: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.white,
                                        child: Icon(Icons
                                            .keyboard_double_arrow_up_rounded),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Center(child: Text("22 June 2022")),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blueGrey),
                                  child: ListTile(
                                      title: Text(
                                        "Evernote",
                                        style: myStyle(14, Colors.black54),
                                      ),
                                      subtitle: Text(
                                        "\$9.50",
                                        style: myStyle(16, Colors.black),
                                      ),
                                      trailing: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.white,
                                        child: Icon(Icons
                                            .keyboard_double_arrow_up_rounded),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Center(child: Text("22 June 2022")),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blueGrey),
                                  child: ListTile(
                                    title: Text(
                                      "Evernote",
                                      style: myStyle(14, Colors.black54),
                                    ),
                                    subtitle: Text(
                                      "\$7.50",
                                      style: myStyle(16, Colors.black),
                                    ),
                                    trailing: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons
                                          .keyboard_double_arrow_up_rounded),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Center(child: Text("22 June 2022")),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blueGrey),
                                  child: ListTile(
                                    title: Text(
                                      "Evernote",
                                      style: myStyle(14, Colors.black54),
                                    ),
                                    subtitle: Text(
                                      "\$10.50",
                                      style: myStyle(16, Colors.black),
                                    ),
                                    trailing: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons
                                          .keyboard_double_arrow_up_rounded),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Center(child: Text("22 June 2022")),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blueGrey),
                                  child: ListTile(
                                    title: Text(
                                      "Evernote",
                                      style: myStyle(14, Colors.black54),
                                    ),
                                    subtitle: Text(
                                      "\$14.50",
                                      style: myStyle(16, Colors.black),
                                    ),
                                    trailing: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons
                                          .keyboard_double_arrow_up_rounded),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Week Tansaction",
                style: myStyle(16, Colors.black54),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      "${myList[index].title}",
                      style: myStyle(16, Colors.black),
                    ),
                    subtitle: Text(
                      "${myList[index].date}",
                      style: myStyle(16, Colors.black),
                    ),
                    trailing: Text(
                      myList[index].price! > 0
                          ? " +${myList[index].price}"
                          : "${myList[index].price}",
                      style: myStyle(16,
                          myList[index].price! > 0 ? Colors.green : Colors.red),
                    ),
                    leading: Icon(myList[index].price! > 0
                        ? Icons.arrow_upward
                        : Icons.arrow_downward),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

myStyle(double size, Color clr, [FontWeight? fw]) {
  return TextStyle(fontSize: size, color: clr, fontWeight: fw);
}
