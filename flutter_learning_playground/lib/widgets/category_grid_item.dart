import 'package:flutter/material.dart';
import 'package:flutter_learning_playground/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  final Category category;
  const CategoryGridItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) => const AlertDialog(
                    content: Text('Not implemented yet.'),
                  ));
        },
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: [
                category.color.withOpacity(0.5),
                category.color.withOpacity(0.9)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Text(category.title),
        ));
  }
}
