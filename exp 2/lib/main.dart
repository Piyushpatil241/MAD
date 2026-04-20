import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CommonWidgetsDemo()
    );
  }
}

class CommonWidgetsDemo extends StatelessWidget {
  const CommonWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exp 2",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Times New Roman",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepPurple[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to Flutter",
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.all(20),
              color: Colors.blue,
              child: Text(
                "This is a Container",
                style: TextStyle(color: Colors.white),
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                SizedBox(width: 10),
                Text("Row Widget"),
              ],
            ),
            
            SizedBox(height: 20),
            
            Image.network('https://imgs.search.brave.com/hxjjdGAaY9spLuO8Li8zuy9FKsjaHc9aaONZGOKA5LY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wbHVz/LnVuc3BsYXNoLmNv/bS9wcmVtaXVtX3Bo/b3RvLTE2NjQyOTk3/NDk0ODEtYWM4ZGM4/YjQ5NzU0P2ZtPWpw/ZyZxPTYwJnc9MzAw/MCZhdXRvPWZvcm1h/dCZmaXQ9Y3JvcCZp/eGxpYj1yYi00LjEu/MCZpeGlkPU0zd3hN/akEzZkRCOE1IeHpa/V0Z5WTJoOE1UZDhm/R05oZEh4bGJud3dm/SHd3Zkh4OE1BPT0',
            width: 200),
          ],
        )
      ),
    );
  }
}

