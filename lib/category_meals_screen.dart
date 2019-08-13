import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final cateogryTitle = routeArgs['title'];
    final cateogryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(cateogryTitle),
      ),
      body: Center(
        child: Text('The Recipes For The Category'),
      ),
    );
  }
}
