import 'package:flutter/material.dart';

class PopularProducts extends StatefulWidget {
  const PopularProducts({super.key});

  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Products bata isPopular attribute bata fetch garna parcha!'),
    );
  }
}