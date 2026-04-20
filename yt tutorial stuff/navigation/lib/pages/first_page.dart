import 'package:flutter/material.dart';
import 'package:navigation/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        backgroundColor: Colors.deepPurple[100],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[50],
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  size: 48,
                )
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E")
            ),

            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text("C O N T A C T")
            ),
            
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S")
            )

          ],
        ),
      ),
    );
  }
}
