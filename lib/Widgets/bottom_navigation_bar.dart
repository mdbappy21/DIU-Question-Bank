import 'package:diu_question_bank/Screen/filterSearch.dart';
import 'package:diu_question_bank/Screen/home_activity.dart';
import 'package:diu_question_bank/Screen/profle.dart';
import 'package:diu_question_bank/Screen/upload_question.dart';
import 'package:diu_question_bank/Widgets/navigation.dart';
import 'package:flutter/material.dart';

class bottomNavigationBar extends StatelessWidget{
  const bottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.teal,

      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.upload), label: "Upload"),
        BottomNavigationBarItem(icon: Icon(Icons.filter_alt_outlined), label: "Filter"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
      ],
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black54,
      onTap: (int currentIndex) {
        if (currentIndex == 0) {
          newScreenNevigation.navigationAllRemove(context, MyHomePage(title:"Question Bank" ));
        }
        if (currentIndex == 1) {
          newScreenNevigation.navigateToNextScreen(context, upload());
        }
        if (currentIndex == 2) {
          newScreenNevigation.navigateToNextScreen(context, filterSearch());
        }if (currentIndex == 3) {
          newScreenNevigation.navigateToNextScreen(context, Profile());
        }
      },
    );
  }
}