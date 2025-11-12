import 'package:flutter/material.dart';
import 'menu_item_card.dart';
import '../../../model/menu_item.dart';

class MenuListTile extends StatelessWidget {
  final MenuItem menuItem;
  const MenuListTile({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {
    return Row(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: MenuItemCard(
                title: menuItem.title,
                icon: menuItem.icon,
                msgCount: menuItem.msgCount,
              ),
            ),
            Text(menuItem.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        );
  }
} 