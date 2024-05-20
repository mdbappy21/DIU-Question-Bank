import 'package:flutter/material.dart';
import 'snack_bar.dart';

class bottomNavigationBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.teal,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.upload), label: "Upload"),
        BottomNavigationBarItem(icon: Icon(Icons.filter_alt_outlined), label: "Filter"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
      ],
      selectedItemColor: Colors.black54,
      unselectedItemColor: Colors.black,
      onTap: (int index) {
        if (index == 0) {
          snackBar.mySnackBar("Home bottom menu", context);
        }
        if (index == 1) {
          snackBar.mySnackBar("Upload bottom menu", context);
        }
        if (index == 2) {
          snackBar.mySnackBar("Filter bottom menu", context);
        }if (index == 3) {
          snackBar.mySnackBar("Profile bottom menu", context);
        }
      },
    );
  }
}