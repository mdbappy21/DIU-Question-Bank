import 'package:diu_question_bank/Screen/developer_details.dart';
import 'package:diu_question_bank/Screen/home_activity.dart';
import 'package:diu_question_bank/Screen/question_solve.dart';
import 'package:diu_question_bank/Screen/settings.dart';
import 'package:diu_question_bank/Screen/upload_question.dart';
import 'package:diu_question_bank/Widgets/navigation.dart';
import 'package:flutter/material.dart';
import 'snack_bar.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(70, 152, 147,1),
        child: ListView(
          children: [
            const DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                    accountName: Text(
                      "Md Bappy", style: TextStyle(color: Colors.white,),),
                    accountEmail: Text("mdbappy1350@gmail.com",
                      style: TextStyle(color: Colors.white),),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(70, 152, 147, 1)),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('images/profile.jpg'),
                    )
                )
            ),


            ListTile(
              title: Text("Home",style: TextStyle(color: Colors.black)),
              leading: Icon(Icons.home,color: Colors.black,),
              onTap: () {
                newScreenNevigation.navigationAllRemove(context, MyHomePage(title: 'Question Bank',));
              },
            ),
            ListTile(
              title: Text("Question",style: TextStyle(color: Colors.black)),
              leading: Icon(Icons.question_answer,color: Colors.black,),
              onTap: () {
                newScreenNevigation.navigateToNextScreen(context, MyHomePage(title: "Question Bank",));
              },
            ),
            ListTile(
              title: Text("Upload",style: TextStyle(color: Colors.black)),
              leading: Icon(Icons.upload,color: Colors.black,),
              onTap: () {
                newScreenNevigation.navigateToNextScreen(context, upload());
              },
            ),
            ListTile(
              title: Text("Solve",style: TextStyle(color: Colors.black)),
              leading: Icon(Icons.question_answer,color: Colors.black,),
              onTap: () {
                newScreenNevigation.navigateToNextScreen(context, solve());
              },
            ),
            ListTile(
              title: Text("Settings",style: TextStyle(color: Colors.black)),
              leading: Icon(Icons.settings,color: Colors.black,),
              onTap: () {
                newScreenNevigation.navigateToNextScreen(context, settings());
              },
            ),
            ListTile(
              title: Text("Developer Details",style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.details,color: Colors.black,),
              onTap: () {
                newScreenNevigation.navigateToNextScreen(context, developerDetails());
              },
            ),
          ],
        ),
      ),
    );
  }
}