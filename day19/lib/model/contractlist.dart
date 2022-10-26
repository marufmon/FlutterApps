import 'package:flutter/material.dart';

class Contract {
  num id;
  String firstName;
  String lastName;
  String img;
  Color color;
  Contract(this.id, this.firstName, this.lastName, this.img, this.color);
  static List<Contract> generatedContractList() {
    return [
      Contract(0, "Md", "Maruf", "images/11.png",
          Color.fromARGB(255, 188, 191, 214)),
      Contract(1, "Md", "Marzaan", "images/n1.png",
          Color.fromARGB(255, 175, 160, 197)),
      Contract(
          2, "Md", "Atik", "images/6.png", Color.fromARGB(255, 131, 131, 161)),
      Contract(3, "Md", "Nazmul", "images/7.png",
          Color.fromARGB(255, 199, 177, 129)),
      Contract(4, "Md", "Palash", "images/8.png",
          Color.fromARGB(255, 111, 111, 117)),
      Contract(
          5, "Ms", "Rikta", "images/9.png", Color.fromARGB(255, 188, 191, 214)),
      Contract(6, "Nitish", "Biswas", "images/10.png",
          Color.fromARGB(255, 111, 111, 117)),
      Contract(0, "Md", "Maruf", "images/11.png",
          Color.fromARGB(255, 188, 191, 214)),
      Contract(1, "Md", "Marzaan", "images/n1.png",
          Color.fromARGB(255, 175, 160, 197)),
      Contract(
          2, "Md", "Atik", "images/6.png", Color.fromARGB(255, 131, 131, 161)),
      Contract(3, "Md", "Nazmul", "images/7.png",
          Color.fromARGB(255, 199, 177, 129)),
      Contract(4, "Md", "Palash", "images/8.png",
          Color.fromARGB(255, 111, 111, 117)),
      Contract(
          5, "Ms", "Rikta", "images/9.png", Color.fromARGB(255, 188, 191, 214)),
      Contract(6, "Nitish", "Biswas", "images/10.png",
          Color.fromARGB(255, 111, 111, 117)),
    ];
  }
}
