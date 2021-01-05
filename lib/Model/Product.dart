import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.description,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Learn Music",
      description: dummyText,
      image: "https://picsum.photos/200",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Comic and Co",
      description: dummyText,
      image: "https://picsum.photos/200",
      color: Color(0xFFAEAEAE)),
  Product(
      id: 3,
      title: "Tech and tips",
      description: dummyText,
      image: "https://picsum.photos/200",
      color: Color(0xFF3D82AE)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
