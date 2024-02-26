import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/color_system.dart';

class BottomNavbar extends StatefulWidget {
  final double ?iconSize;
  final int currentPageIndex;
  final List<BottomNavigationBarItem> listIcon;
  final void Function(int) onTap;
  const BottomNavbar({super.key, required this.listIcon, this.iconSize, required this.onTap, required this.currentPageIndex});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: widget.onTap,
      type: BottomNavigationBarType.fixed,
      iconSize: widget.iconSize != null ? widget.iconSize! : 28,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      currentIndex: widget.currentPageIndex,
      backgroundColor: ColSys().primary,
      items: widget.listIcon,
    );
  }
}