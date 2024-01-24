import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  final int? categoryId;
  const ProductScreen({super.key, this.categoryId});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}