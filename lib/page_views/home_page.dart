import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_plan_app/page_views/cost_estimates.dart';
import 'package:travel_plan_app/page_views/my_account.dart';
import 'package:travel_plan_app/page_views/my_plans.dart';
import 'package:travel_plan_app/page_views/new_plan.dart';
import 'package:travel_plan_app/page_views/notes.dart';
import 'about_page.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        centerTitle: true,
        title: Text(
            widget.title,
            style: new TextStyle(
                fontSize: 40.0,
                fontFamily: 'Josefin Sans',
                color: new Color(0xFF01579B)
            )
        ),
        iconTheme: new IconThemeData(
            color: new Color(0xFF01579B)
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/assets/background/home_screen_background.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
              children: [
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    left: 10.0, top: 250.0, right: 10.0, bottom: 10.0),
                child: ButtonTheme(
                    height: 55.0,
                  child: RaisedButton(
                      child: Text(
                          'New Travel Plan',
                          style: new TextStyle(
                              fontSize: 25.0,
                              fontFamily: 'Josefin Sans',
                              color: new Color(0xFF01579B))),
                      color: Colors.amber[200],
                      textColor: new Color(0xFF01579B),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                          side: BorderSide(color: new Color(0xFF01579B))
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CreateNewPlan()),
                        );
                      }
                    )
                )
            )
          ])
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.amber[200],
        ),
        child: new Drawer(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 10.0),
              new UserAccountsDrawerHeader(
                accountName: Text('Account Name',
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Josefin Sans',
                        color: new Color(0xFF01579B)
                    )
                ),
                currentAccountPicture: new CircleAvatar( //TODO: Take avatar and nickname from My Account settings
                  backgroundImage: new AssetImage('lib/assets/icons/woman_tourist.png'),
                ),
              ),
              new Divider(
                  color: new Color(0xFF01579B),
                  height: 5.0
              ),
              new ListTile(
                title: Text('My Plans',
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Josefin Sans',
                        color: new Color(0xFF000000)
                    )
                ),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new MyPlans())
                  );
                  },
              ),
              new Divider(
                  color: new Color(0xFF01579B),
                  height: 5.0
              ),
              new ListTile(
                title: Text('Cost Estimates',
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Josefin Sans',
                        color: new Color(0xFF000000)
                    )
                ),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new CostEstimatesPage())
                  );
                },
              ),
              new Divider(
                  color: new Color(0xFF01579B),
                  height: 5.0
              ),
              new ListTile(
                title: Text('Notes',
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Josefin Sans',
                        color: new Color(0xFF000000)
                    )
                ),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new NotesPage())
                  );
                },
              ),
              new Divider(
                  color: new Color(0xFF01579B),
                  height: 5.0
              ),
              new ListTile(
                title: Text('My Account', //TODO: Implement EDIT PROFILE with set avatar and nickname
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Josefin Sans',
                        color: new Color(0xFF000000)
                    )
                ),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new MyAccountPage())
                  );
                },
              ),
              new Divider(
                  color: new Color(0xFF01579B),
                  height: 5.0
              ),
              new ListTile(
                title: Text('About the app',
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Josefin Sans',
                        color: new Color(0xFF000000)
                    )
                ),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage())
                  );
                },
              ),
            ],
          ),
        ),
      ));
    }
}
