import 'package:diu_question_bank/Screen/forgot_password.dart';
import 'package:diu_question_bank/Screen/home_activity.dart';
import 'package:diu_question_bank/Screen/register.dart';
import 'package:diu_question_bank/Widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:diu_question_bank/Widgets/navigation.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 250, width: 250, child: Image.asset('images/login.png'),),
            const SearchBox(prefixIcon: Icon(Icons.mail), placeholder: 'Enter Email', hint: 'bappy15-5656@diu.edu.bd',),
            const SearchBox(prefixIcon: Icon(Icons.lock_outline), suffixIcon: Icon(Icons.remove_red_eye), placeholder: 'Enter password', hint: '12345678',),
            TextButton(
                onPressed: () {newScreenNevigation.navigateToNextScreen(context, forgot_password());},
                child: const Text("Forgot Password ?", style: TextStyle(fontSize: 24, color: Colors.black),)
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                newScreenNevigation.navigationAllRemove(context, MyHomePage(title: 'Question Bank',));
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
              child: Text("Login"),
            ),
            SizedBox(height: 30,),
            TextButton(
                onPressed: () {
                  newScreenNevigation.navigateToNextScreen(context, register());
                },
                child: const Text(
                  textAlign: TextAlign.center,
                  "Don't have an Account?\nSign Up",
                  style: TextStyle(fontSize: 24, color: Colors.black,fontWeight: FontWeight.bold),)
            ),
          ],
        ),
      ),
    );
  }
}
