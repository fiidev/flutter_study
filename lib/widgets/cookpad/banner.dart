import 'package:flutter/material.dart';

class BannerCook extends StatelessWidget {
  const BannerCook({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuPJY_P5o5OidjfjYMpAEuOC6X8Y0K_0qIqI-JplrMXw3UYckvJnUOBfWD&s=10',
        ),
      ),
    );
  }
}
