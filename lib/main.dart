import 'package:coounter_app_using_provier/home.dart';
import 'package:coounter_app_using_provier/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  return runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>NumberListProvider())
      ],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
