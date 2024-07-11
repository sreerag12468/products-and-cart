import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final double price;
  final Color color;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.color,
  });
}

final List<Product> PRODUCTS = [
  Product(
    id: 0,
    name: 'Laptop',
    price: 999.99,
    color: Colors.amber,
  ),
  Product(
    id: 1,
    name: 'Smartphone',
    price: 699.99,
    color: Colors.blue,
  ),
  Product(
    id: 2,
    name: 'Tablet',
    price: 499.99,
    color: Colors.green,
  ),
  Product(
    id: 3,
    name: 'Smartwatch',
    price: 199.99,
    color: Colors.red,
  ),
  Product(
    id: 4,
    name: 'Headphones',
    price: 149.99,
    color: Colors.purple,
  ),
  Product(
    id: 5,
    name: 'Camera',
    price: 799.99,
    color: Colors.orange,
  ),
  Product(
    id: 6,
    name: 'Monitor',
    price: 299.99,
    color: Colors.teal,
  ),
  Product(
    id: 7,
    name: 'Keyboard',
    price: 99.99,
    color: Colors.pink,
  ),
  Product(
    id: 8,
    name: 'Mouse',
    price: 49.99,
    color: Colors.cyan,
  ),
  Product(
    id: 9,
    name: 'Printer',
    price: 129.99,
    color: Colors.brown,
  ),
];

