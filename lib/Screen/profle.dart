import 'package:diu_question_bank/Widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:diu_question_bank/Widgets/bottom_navigation_bar.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade800,
      bottomNavigationBar: bottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Center(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(125), // Makes the image circular
                    child: Image.asset('images/profile.jpg'),
                  ),
                  //child: Image.asset('images/profile.jpg'),
                ),
              ),
            ),

            const SizedBox(height: 20,),
            const Text(textAlign: TextAlign.center,"Md Bappy",style: TextStyle(fontSize: 24,color: Colors.white),),
            const Text(textAlign: TextAlign.center,"bappy15-5656@diu.edu.bd",style: TextStyle(fontSize: 18,color: Colors.white),),
            const SizedBox(height: 20,),


            Card(
              color: Colors.teal.shade200,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("5",style: TextStyle(fontSize: 18),),
                        Text("Upload",style: TextStyle(fontSize: 18),),
                      ],
                    ),
                    Column(
                      children: [
                        Text("3",style: TextStyle(fontSize: 18),),
                        Text("Approved",style: TextStyle(fontSize: 18),),
                      ],
                    ),
                    Column(
                      children: [
                        Text("1",style: TextStyle(fontSize: 18),),
                        Text("Pending",style: TextStyle(fontSize: 18),),
                      ],
                    ),
                    Column(
                      children: [
                        Text("1",style: TextStyle(fontSize: 18),),
                        Text("Rejected",style: TextStyle(fontSize: 18),),
                      ],
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30,),
            const card(courseTitle: 'Engineering Mathmatics', semester: '5th', year: 'Fall-2023', exam: 'Final',),
            const card(courseTitle: 'Engineering Mathmatics', semester: '5th', year: 'Fall-2023', exam: 'Mid',),
            const card(courseTitle: 'Statistics and Probability', semester: '5th', year: 'Fall-2023', exam: 'Final',),
          ],
        ),
      ),
    );
  }
}
