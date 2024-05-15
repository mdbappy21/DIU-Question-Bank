import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DIU Question Bank',
      theme: ThemeData(
      ),
      home: const MyHomePage(title: 'DIU Question Bank'),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Diu question Bank"),
    );
  }
}
