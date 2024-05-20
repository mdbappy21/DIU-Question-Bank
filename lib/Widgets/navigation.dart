import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newScreenNevigation {
  static void  navigateToNextScreen(BuildContext context,Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
  static void navigationMaterialRoute(BuildContext context,Widget screen){
    Navigator.push(context,MaterialPageRoute(builder: (context){return screen;}));
  }
  static void navigationCupertinoRoute(BuildContext context,Widget screen){
    Navigator.push( context,CupertinoPageRoute(builder: (context) => screen));
  }
  static void navigationBack(BuildContext context,Widget screen){
    Navigator.pop(context);
  }
  static void navigationReplace(BuildContext context,Widget screen){
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>screen));
  }
  static void navigationAllRemove(BuildContext context,Widget screen){
    Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>screen),(route)=>false);
  }
}