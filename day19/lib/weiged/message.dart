// ignore_for_file: prefer_const_constructors

import 'package:day19/model/contractlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  final contract = Contract.generatedContractList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15),
            child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 25,
                child: IconButton(
                    color: Colors.greenAccent,
                    onPressed: (() {}),
                    icon: Icon(Icons.search))),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      child: CircleAvatar(
                        backgroundColor: contract[index].color,
                        radius: 25,
                        child: Image.asset(
                          contract[index].img,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                separatorBuilder: (_, index) => SizedBox(
                      width: 15,
                    ),
                itemCount: contract.length),
          )
        ],
      ),
    );
  }
}
