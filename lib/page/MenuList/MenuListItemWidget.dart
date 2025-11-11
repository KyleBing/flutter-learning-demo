import 'package:flutter/material.dart';
import 'MenuItemWidget.dart';
import '../../model/MenuItem.dart';

class MenuListItemWidget extends StatelessWidget {
  final MenuItem menuItem;
  const MenuListItemWidget({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {
    return Row(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: MenuItemWidget(
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