import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_plan_app/page_views/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main Theme',
      theme: ThemeData(
        primaryColor: Colors.amber[200],
        brightness: Brightness.light,
      ),
      home: MyHomePage(title: 'Travel Plan')
    );
  }
}
