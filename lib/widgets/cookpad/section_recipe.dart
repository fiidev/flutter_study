import 'package:flutter/material.dart';
import '../../models/recipe.dart';
import './recipe_card.dart';
import './section_header.dart';

class PopularSearchSection extends StatelessWidget {
  final List<Recipe> recipes;
  final String updateTime;

  const PopularSearchSection({
    super.key,
    required this.recipes,
    required this.updateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: "Pencarian Populer", updateTime: updateTime),

          const SizedBox(height: 12),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: recipes.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.5,
            ),
            itemBuilder: (context, index) {
              return RecipeCard(recipe: recipes[index]);
            },
          ),
        ],
      ),
    );
  }
}
