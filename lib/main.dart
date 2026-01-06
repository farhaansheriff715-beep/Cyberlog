# session 10 portfolio assignment of ours 
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PermissionDemo(),
    );
  }
}

class PermissionDemo extends StatefulWidget {
  const PermissionDemo({super.key});

  @override
  State<PermissionDemo> createState() => _PermissionDemoState();
}

class _PermissionDemoState extends State<PermissionDemo> {
  File? imageFile;
  String apiResult = "No data fetched";

  final ImagePicker picker = ImagePicker();


  Future<void> captureImage() async {
    final cameraStatus = await Permission.camera.request();
    final storageStatus = await Permission.storage.request();

    if (cameraStatus.isGranted && storageStatus.isGranted) {
      final XFile? photo =
      await picker.pickImage(source: ImageSource.camera);

      if (photo != null) {
        setState(() {
          imageFile = File(photo.path);
        });
      }
    } else {
      showMessage("Camera or Storage permission denied");
    }
  }


  Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));

    if (response.statusCode == 200) {
      setState(() {
        apiResult = "Internet Access Successful ✔";
      });
    } else {
      setState(() {
        apiResult = "Failed to fetch data";
      });
    }
  }

  void showMessage(String msg) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Permission Based Features")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              imageFile != null
                  ? Image.file(imageFile!, height: 200)
                  : const Text("No image captured"),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: captureImage,
                child: const Text("Camera + Storage"),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: fetchData,
                child: const Text("Internet Permission"),
              ),

              const SizedBox(height: 20),

              Text(apiResult,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}

