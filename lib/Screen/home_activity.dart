import 'package:diu_question_bank/Widgets/bottom_navigation_bar.dart';
import 'package:diu_question_bank/Widgets/card.dart';
import 'package:diu_question_bank/Widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:diu_question_bank/Widgets/app_bar.dart';
import 'package:diu_question_bank/Widgets/drawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      appBar: appBar(
        title: 'DIU Question Bank',
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: bottomNavigationBar(),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            SearchBox(placeholder: "Search your Question", hint: "Algorithm",prefixIcon: Icon(Icons.search),),
            card(courseTitle: "System Analysis and Design",semester: "6th",year: "Spring-2024",exam: "Final",),
            card(courseTitle: "Introduction to data Science",semester: "6th",year: "Spring-2024",exam: "Final",),
            card(courseTitle: "	Financial and Managerial Accounting",semester: "6th",year: "Spring-2024",exam: "Final",),
            card(courseTitle: "Algorithm",semester: "5th",year: "Fall-2023",exam: "Final",),
            card(courseTitle: "Data Structure",semester: "5th",year: "Fall-2023",exam: "Final",),
            card(courseTitle: "Numerical Methods",semester: "5th",year: "Fall-2023",exam: "Final",),
            card(courseTitle: "	Object Oriented Programming II",semester: "6th",year: "Spring-2024",exam: "Final",),
            card(courseTitle: "	Object Oriented Programming II",semester: "6th",year: "Spring-2024",exam: "Mid",),
            card(courseTitle: "	Object Oriented Programming II",semester: "6th",year: "Spring-2024",exam: "Final",),
          ],
        ),
      ),
    );
  }
}
