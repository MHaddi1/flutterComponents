import 'package:flutter/material.dart' show immutable;

@immutable
class SocialMediaList {
  final String sPic;
  const SocialMediaList(this.sPic);
}

const socialMedias = <SocialMediaList>[
  SocialMediaList("assets/Images/Google.png"),
  SocialMediaList("assets/Images/facebook.png"),
  SocialMediaList("assets/Images/instagram.png"),
];
