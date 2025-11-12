import 'package:flutter/material.dart';
import '../../model/menu_item.dart';
import 'widgets/menu_list_tile.dart';

class MenuListView extends StatelessWidget {
  final List<MenuItem> menuItems;
  const MenuListView({super.key, required this.menuItems});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) { 
        return MenuListTile(
          menuItem: menuItems[index],
        );
      },
    );
  }
}