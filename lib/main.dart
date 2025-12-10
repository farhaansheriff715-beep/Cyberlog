# basic code for creating lost phone contact 
import'package:flutter/material.dart';
void main(){
  runApp(MySecondApp());
}
class MySecondApp extends StatelessWidget{
  const MySecondApp({super.key});
  @override
 Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
         title: const Text("If lost contact"),
        ),
        body: Center(
          child: Text("Name:Farhaan Iqbal Sheriff\n Phone Number:7700056943",textAlign:TextAlign.center,style:TextStyle()),
      ),
      ),
    );
  }
}
# the code for performing the conditional statement for determining whether the entered number is an even or not in which we have used a text box to writing the input number and a button to perform the action or condition which ultimately result to the output
  
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
# Basic code for understanding the classes by creating a class named log with properties String action, DateTime timestamp, and String status.
  import 'package:flutter/material.dart';


class Log {
  String action;
  DateTime timestamp;
  String status;

  Log(this.action, this.timestamp, this.status);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /
    List<Log> logs = [
      Log("User Logged In", DateTime.now(), "Success"),
      Log("File Uploaded", DateTime.now().subtract(Duration(minutes: 5)), "Success"),
      Log("Password Change Attempt", DateTime.now().subtract(Duration(hours: 1)), "Failed"),
      Log("User Logged Out", DateTime.now().subtract(Duration(hours: 2)), "Success"),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Log List Example"),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),

          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: logs.map((log) {
              // Format the timestamp (very simple format)
              String formattedTime =
                  "${log.timestamp.hour}:${log.timestamp.minute.toString().padLeft(2, '0')}";

             
              return Text(
                "${log.action} - $formattedTime (${log.status})",
                style: TextStyle(fontSize: 18),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

