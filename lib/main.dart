import 'package:coounter_app_using_provier/home.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
