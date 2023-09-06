import 'package:brain_bytes/consts/social_media_list.dart';
import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  final SocialMediaList social;
  const SocialMedia({super.key, required this.social});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Image.asset(
        social.sPic,
        width: 60.0,
        height: 60.0,
      ),
    );
  }
}
