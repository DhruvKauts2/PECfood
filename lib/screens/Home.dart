import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/screens/LoginPage.dart';

class Home extends StatefulWidget {
  @override
  State <StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body:new Container(
        height: 20.0,
        width: 20.0,
        constraints: BoxConstraints.expand(),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('PECFood', style: TextStyle(fontSize: 90.0, color: Colors.white,fontFamily: 'Fondamento')),
            SizedBox(height: 20.0),
            ButtonTheme(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(75.0),
                side: BorderSide(color: Colors.white),
              ),
              buttonColor: Colors.red,
              minWidth: 350.0,
              height: 60.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator .push(context, MaterialPageRoute(builder : (context){
                    return LoginPage();
                  }));
                },
                child: Text("New to PECfood? Sign Up!",style: TextStyle(color : Colors.white, fontSize: 25, fontFamily: 'Quicksand', fontWeight: FontWeight.bold) ),
              ),
            ),
            SizedBox(height: 10.0),
            ButtonTheme(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(75.0),
                side: BorderSide(color: Colors.white),
              ),
              buttonColor: Colors.white,
              minWidth: 350.0,
              height: 60.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator .push(context, MaterialPageRoute(builder : (context){
                    return LoginPage();
                  }));
                },
                child: Text("Already a user? Log in",style: TextStyle(color : Colors.red, fontSize: 25, fontFamily: 'Quicksand', fontWeight: FontWeight.bold),  ),
              ),
            ),
          ],


        ),
      ),
    );


  }

}
