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
      body:new Container(
        height: 20.0,
        width: 20.0,
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://st2.depositphotos.com/3731481/7824/v/950/depositphotos_78244412-stock-illustration-seamless-background-with-cute-hand.jpg"),
              fit: BoxFit.cover)
      ),
        child:
          new Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            ButtonTheme(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(75.0),
                  side: BorderSide(color: Colors.white),
              ),
              buttonColor: Colors.black,
            minWidth: 175.0,
            height: 75.0,
            child: RaisedButton(
              onPressed: () {
                Navigator .push(context, MaterialPageRoute(builder : (context){
                  return LoginPage();
                }));
              },
              child: Text("Log in",style: TextStyle(color : Colors.white, fontSize: 30) ),
            ),
          ),

        ButtonTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(75.0),
              side: BorderSide(color: Colors.white),
          ),
          buttonColor: Colors.black,
          minWidth: 175.0,
          height: 75.0,
          child: RaisedButton(
            onPressed: () {},
            child: Text("Sign Up",style: TextStyle(color : Colors.white, fontSize: 30),  ),
          ),
        ),
            ],
          )
          ),
        );


  }
}
