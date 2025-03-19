import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:e_commerce_flutter/src/login/login.dart';
import 'package:e_commerce_flutter/src/view/screen/home_screen.dart';
// import 'package:show_mysqldb/screens/main_user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),

      // routes: {
      //   // ignore: prefer_const_constructors
      //   'login': (context) => login(),
      //   // ignore: prefer_const_constructors
      //   //'register': (context) => register(),
      //   // ignore: prefer_const_constructors
      //   //'home': (context) => homepage(),
      //   // ignore: prefer_const_constructors
      //   //'MyApp1': (context) => MyApp1(),
      //   // 'register': (context) => register(),
      //   // 'about': (context) => about(),
      // },
    );
  }
}
