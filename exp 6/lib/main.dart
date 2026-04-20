import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Routes
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

// First Screen
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Navigation Button
            ElevatedButton(
              child: Text("Go to Second Screen"),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),

            SizedBox(height: 30),

            // Gesture Detector
            GestureDetector(
              onTap: () {
                print("Tapped");
              },
              onDoubleTap: () {
                print("Double Tapped");
              },
              onLongPress: () {
                print("Long Pressed");
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Center(
                  child: Text("Touch Me", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Second Screen
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go Back"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}