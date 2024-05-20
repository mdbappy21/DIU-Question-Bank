import 'package:diu_question_bank/Screen/home_activity.dart';
import 'package:diu_question_bank/Widgets/app_bar.dart';
import 'package:diu_question_bank/Widgets/bottom_navigation_bar.dart';
import 'package:diu_question_bank/Widgets/search_box.dart';
import 'package:diu_question_bank/Widgets/drop_down_searchBox.dart';
import 'package:diu_question_bank/Widgets/snack_bar.dart';
import 'package:diu_question_bank/Widgets/navigation.dart';
import 'package:flutter/material.dart';

class upload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      appBar: appBar(
        title: 'Upload Question',
      ),
      bottomNavigationBar: bottomNavigationBar(currentIndex: 1,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                textAlign: TextAlign.center,
                "Upload your Question as a pdf file for your juniors !",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 10,),
            const SearchBox(placeholder: "Department", hint: "CSE"),
            const SizedBox(height: 10,),
            const SearchBox(placeholder: "Course Title", hint: "Algorithm"),
            const SizedBox(height: 10,),
            const SearchBox(placeholder: "Semester", hint: "6th"),

            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: DropdownSearchBox(
                      hintText: '',
                      labelText: 'Year',
                      options: ['2020', '2021', '2022', '2023', '2024'],
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: DropdownSearchBox(
                      hintText: '',
                      labelText: 'Exam',
                      options: ['MidTerm', 'Final'],
                    ),
                  ),
                ],
              ),
            ),

            ElevatedButton(
              onPressed: () {
                // newScreenNevigation.navigationAllRemove(context, MyHomePage(title: 'Question Bank',));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                  side: const BorderSide(width: 2, color: Colors.white38),
                ),
                textStyle: const TextStyle(fontSize: 24),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.upload_file), // Replace with desired icon
                  SizedBox(width: 8), // Space between icon and text
                  Text("Select PDF"),
                ],
              ),
            ),

            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                snackBar.mySnackBar("Successfully Submitted", context,);
                newScreenNevigation.navigationReplace(context, MyHomePage(title: "Question Bank"));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                    side: const BorderSide(width: 2, color: Colors.white38),
                  ),
                  textStyle: const TextStyle(fontSize: 24)),
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
