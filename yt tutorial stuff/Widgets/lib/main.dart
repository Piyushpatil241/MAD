import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  void userTapped() {
    print("User Tapped");
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: GestureDetector(
              onTap: userTapped,
              child: Container(
                height: 300,
                width: 300,
                color: Colors.deepPurple,
                child: Center(
                  child: Text("Tap Me!!"),
                ),
                
              ),
            )
        )
      )
    );
  }
}



