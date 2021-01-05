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
      description: "Description of the Music",
      image: "https://picsum.photos/200",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Comic and Co",
      description: "Description of the Comic",
      image: "https://picsum.photos/200",
      color: Color(0xFFAEAEAE)),
  Product(
      id: 3,
      title: "Tech and tips",
      description: "Description of the tips",
      image: "https://picsum.photos/200",
      color: Color(0xFF3D82AE)),
];
