import 'package:flutter/material.dart';

void main() => runApp(const SettingsScreen());

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Logout'),
        ),
        body: const Center(
          child: Text('Logout'),
        ),
      ),
    );
  }
}
