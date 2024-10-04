import 'package:flutter/material.dart';
import 'loginpage.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warung',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
      home: LoginPage(),
    );
  }
}
