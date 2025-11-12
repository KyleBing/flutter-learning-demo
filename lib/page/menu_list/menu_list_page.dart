import 'package:flutter/material.dart';
import '../../model/menu_item.dart';
import 'menu_list_view.dart';


const List<MenuItem> menuList = [
  MenuItem(title: 'Home', icon: Icons.home, msgCount: 0),
  MenuItem(title: 'Settings', icon: Icons.settings, msgCount: 0),
  MenuItem(title: 'Profile', icon: Icons.person, msgCount: 34),
  MenuItem(title: 'Messages', icon: Icons.message, msgCount: 0),
];
  
class MenuListPage extends StatelessWidget {
  const MenuListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuListView(menuItems: menuList);
  }
}