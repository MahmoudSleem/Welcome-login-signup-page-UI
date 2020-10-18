import 'package:flutter/material.dart';
import 'package:wilcome_login/Screens/Welcome/welcome_screen.dart';
import 'package:wilcome_login/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
          primaryColor: KPrimaryColor,
         scaffoldBackgroundColor: Colors.white
      ),
      home: WelcomeScreen(),
    );
  }
}

