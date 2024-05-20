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
                snackBar.mySnackBar("This is home", context, duration: 2000);
              },
            ),
            ListTile(
              title: Text("Question",style: TextStyle(color: Colors.black)),
              leading: Icon(Icons.question_answer,color: Colors.black,),
              onTap: () {
                snackBar.mySnackBar("This is contact", context, duration: 2000);
              },
            ),
            ListTile(
              title: Text("Upload",style: TextStyle(color: Colors.black)),
              leading: Icon(Icons.upload,color: Colors.black,),
              onTap: () {
                snackBar.mySnackBar("This is email", context, duration: 2000);
              },
            ),
            ListTile(
              title: Text("Solve",style: TextStyle(color: Colors.black)),
              leading: Icon(Icons.question_answer,color: Colors.black,),
              onTap: () {
                snackBar.mySnackBar("This is Phone", context, duration: 2000);
              },
            ),
            ListTile(
              title: Text("Settings",style: TextStyle(color: Colors.black)),
              leading: Icon(Icons.settings,color: Colors.black,),
              onTap: () {
                snackBar.mySnackBar("This is Phone", context, duration: 2000);
              },
            ),
            ListTile(
              title: Text("Developer Details",style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.details,color: Colors.black,),
              onTap: () {
                snackBar.mySnackBar("This is Phone", context, duration: 2000);
              },
            ),
          ],
        ),
      ),
    );
  }
}