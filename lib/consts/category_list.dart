import 'package:flutter/material.dart' show immutable;

@immutable
class CategoryItem {
  final String imgPath;
  final String title;

  const CategoryItem(this.imgPath, this.title);
}

const categoryList = <CategoryItem>[
  CategoryItem("assets/Images/Survey icon.png", "Serveys"),
  CategoryItem("assets/Images/cashback icon.png", "Cashback"),
  CategoryItem("assets/Images/deals icon.png", "Deals"),
  CategoryItem("assets/Images/Game icon.png", "Games"),
];
