import 'package:flutter/material.dart';

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("If Lost Contact"),
        ),
        body: const Center(
          child: Text(
            "Name: Farhaan Sheriff\nPhone: +91 7700056943",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
