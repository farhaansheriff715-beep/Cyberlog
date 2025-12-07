import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const EvenOddApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class EvenOddApp extends StatefulWidget {
  const EvenOddApp({super.key});

  @override
  State<EvenOddApp> createState() => _EvenOddAppState();
}

class _EvenOddAppState extends State<EvenOddApp> {

  TextEditingController numberController = TextEditingController();


  String finalMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Even or Odd Checker"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter a number",
              ),
            ),

            const SizedBox(height: 20),


            ElevatedButton(
              onPressed: () {

                String userText = numberController.text;


                int number = int.parse(userText);


                if (number % 2 == 0) {
                  finalMessage = "The number $number is Even.";
                } else {
                  finalMessage = "The number $number is Odd.";
                }

                setState(() {});
              },
              child: const Text("Check Number"),
            ),

            const SizedBox(height: 20),

            Text(
              finalMessage,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
