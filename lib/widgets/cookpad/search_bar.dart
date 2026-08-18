import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarCook extends StatelessWidget {
  const SearchBarCook({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(CupertinoIcons.search),
          labelText: 'Ketik bahan-bahan...',
          filled: true,
          fillColor: const Color.fromARGB(255, 234, 221, 208),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        ),
      ),
    );
  }
}
