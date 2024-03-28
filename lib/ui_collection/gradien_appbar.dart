import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/color_system.dart';

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {

  const GradientAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: AppBar(
        title: TextField(
          // controller: _searchController,
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: const InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.white54),
            border: InputBorder.none,
          ),
          onChanged: (value) {
            // Perform search functionality here
          },
        ),
        // title: const Text("Gaboot", style: TextStyle(color: Colors.white),),
        backgroundColor: ColSys().primary,
        flexibleSpace: Container(
          decoration: const BoxDecoration(),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 40); // Adjust the height as needed
}