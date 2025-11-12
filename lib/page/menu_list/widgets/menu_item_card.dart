import 'package:flutter/material.dart';

class MenuItemCard extends StatelessWidget {

  

  final String title;
  final IconData icon;
  final int msgCount;
  const MenuItemCard({super.key, required this.title, required this.icon, required this.msgCount});

  @override
  Widget build(BuildContext context) {
    return Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            elevation: 10,
            shadowColor: Color.fromARGB(255, 204, 204, 204).withValues(alpha: 0.5),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: 80,
              height: 80,
              padding: EdgeInsets.all(10),
              child: Column(
                spacing: 3,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(icon, size: 30),
                  Text(
                    title,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),

          msgCount > 0 ? Positioned(
            top: -10,
            right: -10,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Text(
                msgCount.toString(), 
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ) : SizedBox.shrink(),
        ],
      );
  }
}