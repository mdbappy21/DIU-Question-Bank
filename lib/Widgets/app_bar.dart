import 'package:flutter/material.dart';
import 'snack_bar.dart';

class appBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  appBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      titleSpacing: 0,
      centerTitle: true,
      toolbarHeight: 60,
      toolbarOpacity: 1,
      elevation: 6,
      backgroundColor: Colors.teal,
      foregroundColor: Colors.black,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70);
}