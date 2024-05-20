import 'package:diu_question_bank/Screen/Login.dart';
import 'package:diu_question_bank/Screen/OTP.dart';
import 'package:diu_question_bank/Widgets/search_box.dart';
import 'package:diu_question_bank/Widgets/navigation.dart';
import 'package:flutter/material.dart';

class forgot_password extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 250, width: 250, child: Image.asset('images/forgot.png'),),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text("Forgot Password",style: TextStyle(fontSize: 28),),
            ),
            SearchBox(prefixIcon:Icon(Icons.email,color: Colors.black,),placeholder: "Enter Email", hint: "bappy15-xxxx@diu.edu.bd"),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                newScreenNevigation.navigateToNextScreen(context, OTP());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: const BorderSide(width: 2, color: Colors.white38),
                  ),
                  textStyle: const TextStyle(fontSize: 24)),
              child: Text("Sent"),
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: (){
              newScreenNevigation.navigationAllRemove(context, const Login());
            }, child: Text("Remember Password? Login",style: TextStyle(fontSize: 20,color: Colors.black),)),
          ],
        ),
      ) ,
    );
  }

}