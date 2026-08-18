import 'package:flutter/material.dart';
import 'package:gympro/widgets/cookpad/banner.dart';
import 'package:gympro/widgets/cookpad/header.dart';
import 'package:gympro/widgets/cookpad/search_bar.dart';
import 'package:gympro/widgets/cookpad/section_recipe.dart';
import 'package:gympro/data/dummy.dart';

class CookpadScreen extends StatelessWidget {
  const CookpadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              const SizedBox(height: 30),
              SearchBarCook(),
              BannerCook(),
              const SizedBox(height: 30),
              PopularSearchSection(recipes: dummyRecipes, updateTime: '04:30'),
            ],
          ),
        ),
      ),
    );
  }
}
