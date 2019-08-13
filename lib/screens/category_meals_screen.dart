import 'package:flutter/material.dart';

import 'package:meals_app/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final cateogryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(cateogryTitle),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) => Text(categoryMeals[index].title),
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
