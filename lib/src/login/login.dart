import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:http/http.dart' as http;
// ignore: unused_import
import 'dart:convert';
import 'package:dio/dio.dart';
// ignore: unused_import
import 'dart:async';

//import 'package:mariadb/mariadb.dart';

import 'package:e_commerce_flutter/src/login/user.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  // ignore: override_on_non_overriding_member
  final formKey = GlobalKey<FormState>();
  //ประกาศตัวแปร3ตัวเพื่อเก็บค่า value ที่ใส่มาใน form

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  // สร้างฟังก์ชั่นสำหรับเชื่อมต่อกับ PHP
  // async ใน Dart เป็นคีย์เวิร์ดที่ใช้ระบุว่าฟังก์ชันนั้นๆ ถูกออกแบบให้ทำงานแบบไม่บล็อก (non-blocking) และสามารถเรียกใช้งานแบบ await เพื่อรอคอยผลลัพธ์จาก Future ได้
  Future sing_in() async {
    //ipของAndroid Emulator ใช้ IP Address 10.0.2.2 หรือใช้ ipaddress ของเครื่อง ipconfig ipv4addressได้เช่นกัน
    String url = "http://10.0.2.2/flutter_login_php/flutter_login/login.php";

    //respone ส่งข้อมูลไปมาระหว่าง database กับ from ที่ทำการกรอกข้อมูลตรงนั้น
    // ignore: prefer_const_declarations
    // final urli =
    //     'http://192.168.0.104:3310/flutter_login_php/flutter_login/login.php';
    // final response = await http.get(Uri.parse(urli));

    final respone = await http.post(Uri.parse(url), headers: {
      //
      'Content-Type': 'application/x-www-form-urlencoded'
      //*******/
    }, body: {
      //ส่งค่าตัวแปร2ตัวไปที่ login.php ส่งไปเก็บใน Database
      'password': pass.text,
      'email': email.text,
    });

    //เช็คการตอบกลับมาจาก login.php
    //เพื่อเช็การตอบกลับจาก login
    //****body แทนเนื้อของข้อมูลของ data****/
    //var data = json.decode(respone.body);
    var data = await json.decode(json.encode(respone.body));
    //ถ้า Errorให้ยังงอยู่หน้า Register
    //data.toString() == "Error"
    if (data == "Error") {
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, 'login');
    } else {
      //เมื่อกดlogin ได้แล้วให้ set ค่าในไฟล์ของ user.dart ให้เป็น true ไว้ก่อน register เช่นเดียวกัน
      await User.setsignin(true);
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, 'HomeScreen');
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Gekko Shop!',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'To continue using this app',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Please sign in first.',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/login.png',
                    fit: BoxFit.contain,
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email or Username',
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Empty';
                        }
                        return null;
                      },
                      controller: email,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Empty';
                        }
                        return null;
                      },
                      controller: pass,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          // ignore: deprecated_member_use
                          backgroundColor: const Color(0xFF3F60A0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        //Navigator.pushNamed(context, 'home');
                        //ตรวจสอบ
                        bool pass = formKey.currentState!.validate();
                        if (pass) {
                          sing_in();
                        }
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'register');
                    },
                    child: const Text("Didn't have any Account? Sign Up now"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
