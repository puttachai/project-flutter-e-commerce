//import 'dart:html';
// ignore_for_file: non_constant_identifier_names

// ignore: unused_import
import 'package:e_commerce_flutter/src/login/user.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
// ignore: unused_import
import 'package:e_commerce_flutter/src/login/login.dart';
// ignore: duplicate_import
//import 'user.dart';

// ignore: camel_case_types
class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<register> {
  //ระบุชื่อเพื่อเก็บค่าของ Value ใน flutter ใช้ TextEditingController ไว้ด้านใน
  // ignore: override_on_non_overriding_member
  final formKey = GlobalKey<FormState>();
  //ประกาศตัวแปร3ตัวเพื่อเก็บค่า value ที่ใส่มาใน form
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController email = TextEditingController();

  //สร้างฟังก์ชั่นสำหรับเชื่อมต่อกับ PHP
  //async ใน Dart เป็นคีย์เวิร์ดที่ใช้ระบุว่าฟังก์ชันนั้นๆ ถูกออกแบบให้ทำงานแบบไม่บล็อก (non-blocking) และสามารถเรียกใช้งานแบบ await เพื่อรอคอยผลลัพธ์จาก Future ได้
  Future sing_up() async {
    //ipของAndroid Emulator ใช้ IP Address 10.0.2.2 หรือใช้ ipaddress ของเครื่อง ipconfig ipv4addressได้เช่นกัน
    String url = "http://10.0.2.2/flutter_login_php/flutter_login/register.php";
    //respone ส่งข้อมูลไปมาระหว่าง database กับ from ที่ทำการกรอกข้อมูลตรงนั้น
    final respone = await http.post(Uri.parse(url), headers: {
      //
      'Content-Type': 'application/x-www-form-urlencoded'
      //*******/
    }, body: {
      //ส่งค่าตัวแปร3ตัวไปที่ register.php ส่งไปเก็บใน Database
      'name': name.text,
      'password': pass.text,
      'email': email.text,
    });

    //เช็คการตอบกลับมาจาก Register.php
    //เพื่อเช็การตอบกลับจาก Register
    //****body แทนเนื้อของข้อมูลของ data****/
    var data = json.decode(respone.body);
    //ถ้า Errorให้ยังงอยู่หน้า Register
    //data.toString() == "Error"
    if (data == "Error") {
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, 'register');
    } else {
      //เมื่อกดlogin ได้แล้วให้ set ค่าในไฟล์ของ user.dart ให้เป็น true ไว้ก่อน register เช่นเดียวกัน
      await User.setsignin(true);
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, 'login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor: Color(0xFFf5f5f5),
      body: Center(
        child: Form(
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // RichText(
                  //   text: TextSpan(
                  //     style: DefaultTextStyle.of(context).style,
                  //     // ignore: prefer_const_literals_to_create_immutables
                  //     children: <TextSpan>[
                  //       // ignore: prefer_const_constructors
                  //       TextSpan(
                  //         text: 'Sign ',
                  //         // ignore: prefer_const_constructors
                  //         style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 50,
                  //             fontWeight: FontWeight.bold),
                  //       ),
                  //       // ignore: prefer_const_constructors
                  //       TextSpan(
                  //         text: 'Up',
                  //         // ignore: prefer_const_constructors
                  //         style: TextStyle(
                  //             color: Colors.red,
                  //             fontSize: 50,
                  //             fontWeight: FontWeight.bold),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Please complete your',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    'biodata correctly',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: false,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        border: OutlineInputBorder(),
                        labelText: 'Your name',
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Empty';
                        }
                        return null;
                      },
                      //สร้าง
                      controller: name,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: false,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        border: OutlineInputBorder(),
                        labelText: 'Your E-Mail',
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
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: true,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        border: OutlineInputBorder(),
                        labelText: 'Create your Password',
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
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: true,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        border: OutlineInputBorder(),
                        labelText: 'Re-Type your Password',
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Empty';
                        } else if (val != pass.text) {
                          return 'password not match';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(
                            0xFF3F60A0), // ใช้ backgroundColor แทน primary
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        // ตรวจสอบ
                        bool pass = formKey.currentState!.validate();
                        if (pass) {
                          sing_up();
                        }
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
