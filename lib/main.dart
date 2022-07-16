import 'package:flutter/material.dart';
import 'package:flutter_catlog/home_page.dart';

void main(){
  runApp(MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    // double digi=500;
    // num hey = 600;
    return MaterialApp(
      home: HomePage(),
    );
  }
}