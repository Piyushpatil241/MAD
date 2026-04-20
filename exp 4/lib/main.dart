import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoApp(),
    );
  }
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icons, Images, Charts, Drawer"),
      ),

      // Drawer
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Menu", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
          ],
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // Icon
          Icon(Icons.star, size: 50, color: Colors.orange),

          SizedBox(height: 20),

          // Image
          Image.network(
              'https://miro.medium.com/v2/da:true/resize:fit:1200/0*Bi-NdnMSA_LcC30Z',
            height: 200,
          ),

          SizedBox(height: 20),

          // Chart (Bar Chart)
          SizedBox(
            height: 200,
            child: BarChart(
              BarChartData(
                barGroups: [
                  BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 10)]),
                  BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 20)]),
                  BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 30)]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}