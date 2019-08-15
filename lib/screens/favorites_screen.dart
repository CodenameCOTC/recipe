import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.model.dart';
import 'package:meals_app/widgets/meal_item.dart';

class Favorites extends StatelessWidget {
  final List<Meal> favoriteMeals;

  Favorites(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) => MealItem(
          id: favoriteMeals[index].id,
          title: favoriteMeals[index].title,
          imageUrl: favoriteMeals[index].imageUrl,
          affordability: favoriteMeals[index].affordability,
          complexity: favoriteMeals[index].complexity,
          duration: favoriteMeals[index].duration,
        ),
        itemCount: favoriteMeals.length,
      );
    }
  }
}
