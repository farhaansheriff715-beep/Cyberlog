# session 11 portfolio assignment of ours 
import 'package:flutter/material.dart';
import 'settings.dart.';

void main() {
  runApp(const MyApp());
}

/// Root of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Internship App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

/// Simple home screen with navigation to Settings
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.settings),
          label: const Text('Open Settings'),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 14,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const SettingsPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
