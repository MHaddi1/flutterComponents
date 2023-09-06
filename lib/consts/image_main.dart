import 'package:flutter/material.dart' show immutable;

@immutable
class LogoImage {
  final String imgPath;
  const LogoImage(this.imgPath);
}

const logoImage = <LogoImage>[
  LogoImage("assets/Images/logo.png"),
];
