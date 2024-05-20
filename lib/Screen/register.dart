import 'package:diu_question_bank/Screen/Login.dart';
import 'package:flutter/material.dart';
import 'package:diu_question_bank/Widgets/search_box.dart';
import 'package:diu_question_bank/Widgets/navigation.dart';

class register extends StatelessWidget{
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 180, width: 300, child: Image.asset('images/register.png'),),
            
            const SearchBox(placeholder: "Enter Name", hint: "Bappy"),
            const SearchBox(placeholder: "Enter University Id", hint: "221-15-xxxx"),
            const SearchBox(placeholder: "Enter Email", hint: "bappy15-xxxx@diu.edu.bd"),
            const SearchBox(placeholder: "Enter Password", hint: "12345678"),
            const SearchBox(placeholder: "Confirm Password", hint: "12345678"),
            
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    color: Colors.white,
                    width: 16,
                    height: 16,
                  ),
                ),
                const Column(
                  children: [
                    Text("By joining , I agree to the Term of\nServices and Privacy Policy.",style: TextStyle(fontSize: 18),),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10,),
            
            ElevatedButton(
              onPressed: () {
                newScreenNevigation.navigationAllRemove(context, const Login());
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
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }

}