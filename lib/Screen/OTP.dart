import 'package:diu_question_bank/Screen/Login.dart';
import 'package:diu_question_bank/Widgets/search_box.dart';
import 'package:diu_question_bank/Widgets/navigation.dart';
import 'package:flutter/material.dart';

class OTP extends StatelessWidget{
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
              child: Text("OTP",style: TextStyle(fontSize: 28),),
            ),
            const SearchBox(prefixIcon:Icon(Icons.password,color: Colors.black,),placeholder: "OTP", hint: "123456"),
            const SizedBox(height: 25,),
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
              child: Text("Sent"),
            ),
          ],
        ),
      ) ,
    );
  }

}