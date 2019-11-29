import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget{
  @override
  _AboutPageState createState() => new _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('About the app',
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
