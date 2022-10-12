import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:xapi_demo/models/category_model.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: StaggeredGrid.count(
        crossAxisCount: 3,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        children: categoryList
            .map((e) => Container(
                  constraints: const BoxConstraints(minHeight: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.blue,
                      width: 1,
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(e.title),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
