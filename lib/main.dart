import 'package:diu_question_bank/Screen/home_activity.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DIU Question Bank',
      theme: ThemeData(
      ),
      home: const MyHomePage(title: "DIU Question Bank",),
    );
  }
}
