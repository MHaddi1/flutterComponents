import 'package:brain_bytes/consts/category_list.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final CategoryItem item;
  const Category({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                shadowColor: Colors.black,
                child: Image.asset(
                  item.imgPath,
                  width: 60,
                  height: 60,
                )),
            Text(
              item.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
