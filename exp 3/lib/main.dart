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
      home: LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exp 3")
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.red,
                  child: Center(child: Text("1")),
                ),
              ),

              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.green,
                  child: Center(child: Text("2")),
                ),
              ),
            ],
          ),

          SizedBox(height: 10),

          AspectRatio(
            aspectRatio: 2/1,
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("AspectRatio Box")),
            ),
          ),

          SizedBox(height: 10),

          Image.network(
            "https://imgs.search.brave.com/tFECOlyw1iDaM7r1xf3eAXZY8iz_WkoeuccOJWaeL8I/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS50ZW5vci5jb20v/ZzN5MnE1VlF4dkFB/QUFBTS9jYXQtY29t/cHV0ZXIuZ2lm.gif",
            height: 200,
          ),

          SizedBox(height: 10),

          Expanded(
            child: ListView(
              children: [
                Card(
                  child: ListTile(
                    title: Text("List Item 1"),
                  ),
                ),

                Card(
                  child: ListTile(
                    title: Text("List Item 2")
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 120,
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                Container(color: Colors.orange),
                Container(color: Colors.purple),
                Container(color: Colors.yellow),
                Container(color: Colors.cyan)
              ],
            ),
          )
        ],
      )
    );
  }
}

