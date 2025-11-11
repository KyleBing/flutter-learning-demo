import 'package:flutter/material.dart';
import '../../model/MenuItem.dart';
import 'MenuListItemWidget.dart';

class MenuListWidget extends StatelessWidget {
  final List<MenuItem> menuItems;
  const MenuListWidget({super.key, required this.menuItems});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) { 
        return MenuListItemWidget(
          menuItem: menuItems[index],
        );
      },
    );
  }
}