import 'package:flutter/material.dart';
import 'page/menu_list/menu_list_page.dart';
import 'page/text_image/text_image_page.dart';
import 'page/game_console/game_console_page.dart';
import 'state/AppState.dart';
import 'page/animation/animation_page.dart';
import 'model/animation_position.dart';

void main() {
  runApp(
    AppState(
      controller: AppStateController(initialGridColumnCount: 4, initialAnimationPosition: AnimationPosition(top: 0, left: 0)),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Flutter Learning Demo'),
      ),
      body: navigationList[_currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: navigationList
            .map(
              (item) => BottomNavigationBarItem(icon: Icon(item.icon), label: item.title, tooltip: item.title, backgroundColor: Colors.blue),
            ).toList(),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
    
  }
}


//*
// NavigationItem is a class that represents a navigation item
// It contains a title, an icon, and a page
// The title is the text that will be displayed in the navigation item
// The icon is the icon that will be displayed in the navigation item
// The page is the page that will be displayed when the navigation item is clicked
// */

class NavigationItem {
  final String title;
  final IconData icon;
  final Widget page;
  const NavigationItem({required this.title, required this.icon, required this.page});
}

const List<NavigationItem> navigationList = [
  NavigationItem(title: 'Home', icon: Icons.home, page: MenuListPage()),
  NavigationItem(title: 'Image', icon: Icons.message, page: TextImagePage()),
  NavigationItem(title: 'Game', icon: Icons.videogame_asset, page: GameConsolePage()),
  NavigationItem(title: 'Animation', icon: Icons.animation, page: AnimationPage()),
];