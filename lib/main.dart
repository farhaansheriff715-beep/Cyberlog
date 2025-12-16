# This is the code releated to the topic navigation bar that we learned during our session six which contsains three pages namely Home,logs and settings
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Beginner App"),
        backgroundColor: Colors.blue,
      ),
      body: getPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Logs",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }

  Widget getPage() {
    if (selectedIndex == 0) {
      return HomePage();
    } else if (selectedIndex == 1) {
      return LogsPage();
    } else {
      return SettingsPage();
    }
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.home, color: Colors.blue),
              title: Text("Welcome"),
              subtitle: Text("This is the home page"),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: ListTile(
              leading: Icon(Icons.info, color: Colors.green),
              title: Text("Info"),
              subtitle: Text("Use the bottom menu to navigate"),
            ),
          ),
        ],
      ),
    );
  }
}

class LogsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.list),
              title: Text("Logs"),
              subtitle: Text("Your logs will appear here"),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: ListTile(
              leading: Icon(Icons.history),
              title: Text("History"),
              subtitle: Text("No history yet"),
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              subtitle: Text("Edit your profile"),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text("App Settings"),
              subtitle: Text("Change app preferences"),
            ),
          ),
        ],
      ),
    );
  }
}
