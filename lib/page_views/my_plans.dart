import 'package:flutter/material.dart';

class MyPlans extends StatefulWidget{
  @override
  _MyPlansState createState() => new _MyPlansState();
}

class _MyPlansState extends State<MyPlans> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('My Plans',
              style: new TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Josefin Sans',
                  color: new Color(0xFF000000)
              )
          ),
          centerTitle: true,
        ),
        body: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
            'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
            'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore '
            'eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
    );
  }
}
