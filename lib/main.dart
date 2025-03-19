import 'package:flutter/material.dart';
import 'dart:ui' show PointerDeviceKind;
import 'package:e_commerce_flutter/core/app_theme.dart';
import 'package:e_commerce_flutter/src/view/screen/home_screen.dart';
//import 'screens/main_user.dart';
import 'package:e_commerce_flutter/src/view/screen/home_screen.dart';
import 'package:e_commerce_flutter/src//login/home.dart';
import 'package:e_commerce_flutter/src//login/login.dart';
//import 'package:showproduct/login/notfoundpage.dart';
import 'package:e_commerce_flutter/src//login/register.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      debugShowCheckedModeBanner: false,
      //home: const HomeScreen(),
      theme: AppTheme.lightAppTheme,
      home: login(),
      // onGenerateRoute: (RouteSettings settings) {
      //   switch (settings.name) {
      //     case 'login':
      //       return MaterialPageRoute(builder: (context) => login());
      //     case 'register':
      //       return MaterialPageRoute(builder: (context) => register());
      //     case 'home':
      //       return MaterialPageRoute(builder: (context) => homepage());
      //     case 'MainUser':
      //       return MaterialPageRoute(builder: (context) => MainUser());
      //     default:
      //       // หากไม่พบเส้นทางที่ถูกต้อง
      //       return MaterialPageRoute(builder: (context) => NotFoundPage());
      //   }
      // },
      routes: {
        // ignore: prefer_const_constructors
        'login': (context) => login(),
        // ignore: prefer_const_constructors
        'register': (context) => register(),
        // ignore: prefer_const_constructors
        'home': (context) => homepage(),
        // ignore: prefer_const_constructors
        'HomeScreen': (context) => HomeScreen(),
        // 'register': (context) => register(),
        // 'about': (context) => about(),
      },
    );
  }
}
