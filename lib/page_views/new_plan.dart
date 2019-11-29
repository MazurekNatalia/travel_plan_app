import 'package:flutter/material.dart';

//TODO: Resolve problem with input field that hides behind keyboard

class CreateNewPlan extends StatefulWidget{

  @override
  _CreateNewPlanState createState() => new _CreateNewPlanState();
}

class _CreateNewPlanState extends State<CreateNewPlan> {

  @override
  Widget build(BuildContext context) {
    String _planTitle;
    String _countrty;
    String _city;

    return new Scaffold(
        resizeToAvoidBottomInset : true,
        appBar: new AppBar(
          title: new Text('Create New Travel Plan',
              style: new TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Josefin Sans',
                  color: new Color(0xFF000000)
              )
          ),
          centerTitle: true,
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/background/new_plan_background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child:  ListView(
                children: <Widget>[ Card(
                    elevation: 0,
                    color: Colors.transparent,
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Form(
                            key: ValueKey('newPlanFormKey'),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Text(
                                  'Where would you\n like to go ?',
                                  style: new TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Josefin Sans',
                                    color: Colors.amber[200],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 8.0),
                                Image.asset('lib/assets/icons/new_plan_icon.png'),
                                SizedBox(height: 25.0),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Plan Title',
                                    labelStyle: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: 'Josefin Sans',
                                        color: Colors.black
                                    ),
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (input) => !input.contains('3') ? 'Enter at least ' : null, //TODO: At least 1 letter
                                  onSaved: (input) => _planTitle = input,
                                ),
                                SizedBox(height: 10.0),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Country',
                                    labelStyle: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: 'Josefin Sans',
                                        color: Colors.black
                                    ),
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (input) => !input.contains('3') ? 'Enter at least 3 ' : null, //TODO: At least 3 letters, no special chars, numbers
                                  onSaved: (input) => _countrty = input,
                                ),
                                SizedBox(height: 10.0),
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'City',
                                      labelStyle: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Josefin Sans',
                                          color: Colors.black
                                      ),
                                      border: OutlineInputBorder()
                                  ),
                                  validator: (input) => !input.contains('8') ? 'Not a valid' : null, //TODO: At least 3 letters, no special chars, numbers
                                  onSaved: (input) => _city = input,
                                ),
                                SizedBox(height: 10.0),
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'Date',
                                      labelStyle: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Josefin Sans',
                                          color: Colors.black
                                      ),
                                      border: OutlineInputBorder()
                                  ),
  //                            onTap: () => selectdate() TODO: Implement data picker with calendar
                                ),
                                SizedBox(height: 10.0),
                                RaisedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Let's go!",
                                    style: new TextStyle(
                                        fontSize: 25.0,
                                        fontFamily: 'Josefin Sans',
                                        color: new Color(0xFF000000)
                                    ),
                                  ),
                                  color: Colors.amber[200],
                                  textColor: new Color(0xFF01579B),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(30.0),
                                      side: BorderSide(color: new Color(0xFF01579B))
                                  ),
                                )
                              ],
                            )
                        )
                    )
                )
          ])
        )
    );
  }
}
