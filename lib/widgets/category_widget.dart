import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String category;

  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Row(
        children: <Widget>[
          const Icon(Icons.ramen_dining),
          const SizedBox(width: 10.0),
          Text(category),
        ],
      ),
    );
  }
}
