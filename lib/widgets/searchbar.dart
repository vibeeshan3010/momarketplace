import 'package:flutter/material.dart';

import '../util/app_colors.dart';
import '../util/strings.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: TextField(
        style: TextStyle(color: AppColors.black),
        cursorColor: AppColors.black,
        controller: searchController,
        decoration: InputDecoration(
          hintText: AppStrings.search,
          hintStyle: Theme.of(context).textTheme.displayMedium,
          prefixIcon: Icon(Icons.search,color: AppColors.black,),
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
