// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 32, 41),
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Setting",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 8, 18, 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: NetworkImage(
                        "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/298267792_1432047977218490_2040140291139212763_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=kNoV8vA0YCgAX87m-_h&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_Dwxoc6vPV7OYGfCKhC8gdvxecnxkmUgjinj0fLt2VPw&oe=63487DC6"),
                  ),
                ),
                title: Text(
                  "Maruf",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                subtitle: Text(
                  "Hey there! i am using WhatsApp.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white24),
                ),
                trailing: Icon(
                  Icons.qr_code,
                  size: 25,
                  color: Colors.green,
                ),
              ),
              Divider(
                height: 5,
                color: Colors.white30,
              ),
              ListTile(
                leading: Icon(
                  Icons.keyboard_voice,
                  size: 25,
                  color: Colors.white38,
                ),
                title: Text(
                  "Account",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                subtitle: Text(
                  "privacy,security,change number",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white24),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.chat,
                  size: 25,
                  color: Colors.white38,
                ),
                title: Text(
                  "Chat",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                subtitle: Text(
                  "Theme, wallpapers, chat history",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white24),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  size: 25,
                  color: Colors.white38,
                ),
                title: Text(
                  "Notification",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                subtitle: Text(
                  "Message,group & call tones",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white24),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.data_saver_off,
                  size: 25,
                  color: Colors.white38,
                ),
                title: Text(
                  "Storage and data",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                subtitle: Text(
                  "Network usage, auto download",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white24),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.language,
                  size: 25,
                  color: Colors.white38,
                ),
                title: Text(
                  "App Language",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                subtitle: Text(
                  "English(phone's language)",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white24),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.help,
                  size: 25,
                  color: Colors.white38,
                ),
                title: Text(
                  "Help",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                subtitle: Text(
                  "Help center,contact us, privacy policy",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white24),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.people,
                  size: 25,
                  color: Colors.white38,
                ),
                title: Text(
                  "Invite a friend",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              Text(
                "from",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white24),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    size: 15,
                    color: Colors.grey,
                  ),
                  Text(
                    "Meta",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              )
            ],
          ),
        ),
      ),
    );
  }
}
