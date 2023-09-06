import 'package:flutter/material.dart';

class MainIMage extends StatelessWidget {
  final String mainImage;
  const MainIMage({super.key, required this.mainImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image.asset(mainImage),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
