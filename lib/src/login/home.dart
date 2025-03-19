// ignore_for_file: override_on_non_overriding_member, duplicate_ignore

import 'package:flutter/material.dart';
//import 'package:showproduct/login/user.dart';
import 'package:e_commerce_flutter/src/login/user.dart';

// ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  // ignore: override_on_non_overriding_member
  @override
  Future logout() async {
    await User.setsignin(false);
    // ignore: use_build_context_synchronously
    Navigator.pushNamed(context, 'login');
  }

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // ignore: prefer_const_constructors
        title: Text("Homepage Flutter Login-php"),
      ),
      body: Center(
        child: Column(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              // ignore: prefer_const_constructors
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome To Flutter Homepage",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            // ignore: prefer_const_constructors
            Expanded(child: Center()),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: SizedBox(
                width: 350,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      backgroundColor: const Color(0xFF3F60A0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    //Navigator.pushNamed(context, 'login');
                    logout();
                  },
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Sign out",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
