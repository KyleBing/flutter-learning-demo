import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final IconData icon;
  final int msgCount;
  const MenuItem({required this.title, required this.icon, required this.msgCount});

  @override
  String toString() {
    return 'MenuItem(title: $title, icon: $icon, msgCount: $msgCount)';
  }
}