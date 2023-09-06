import 'package:flutter/material.dart' show immutable;

@immutable
class PersonInfo {
  final String name;
  final String price;
  final String imgPath;
  final String time;
  const PersonInfo(this.name, this.price, this.imgPath, this.time);
}

const personInfo = <PersonInfo>[
  PersonInfo("Haddi", "\$83", "assets/Images/Ellipse 2.png", "3 min ago"),
  PersonInfo("Ammar", "\$40", "assets/Images/Ellipse 3.png", "8 min ago"),
  PersonInfo("Hassam", "\$20", "assets/Images/Ellipse 4.png", "5 min ago"),
  PersonInfo("Haddi", "\$83", "assets/Images/Ellipse 2.png", "3 min ago"),
  PersonInfo("Ammar", "\$40", "assets/Images/Ellipse 3.png", "5 min ago"),
  PersonInfo("Hassam", "\$20", "assets/Images/Ellipse 4.png", "5 min ago"),
  PersonInfo("Haddi", "\$83", "assets/Images/Ellipse 2.png", "3 min ago"),
];
