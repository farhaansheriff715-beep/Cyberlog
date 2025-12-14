The session 5 Assignment Givem to us about where we have to use gridview meaning out home screen should have two grid view and also used cards for data as well as the container Widget
import 'package:flutter/material.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text('Daily Log', style: TextStyle(fontSize: 18)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text('Cyber Tips', style: TextStyle(fontSize: 18)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orange[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text('Device Security', style: TextStyle(fontSize: 18)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text('Notes', style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
