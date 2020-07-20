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
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
              image: NetworkImage(
                  "https://st2.depositphotos.com/2786775/7446/v/450/depositphotos_74461411-stock-illustration-black-food-and-drink-signs.jpg"),
              fit: BoxFit.cover,)
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
              buttonColor: Color(0xff81B29A),
            minWidth: 175.0,
            height: 75.0,
            child: RaisedButton(
              onPressed: () {
                Navigator .push(context, MaterialPageRoute(builder : (context){
                  return LoginPage();
                }));
              },
              child: Text("Log in",style: TextStyle(color : Colors.white, fontSize: 27, fontFamily: 'Quicksand', fontWeight: FontWeight.bold) ),
            ),
          ),

        ButtonTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(75.0),
              side: BorderSide(color: Colors.white),
          ),
          buttonColor: Color(0xff81B29A),
          minWidth: 175.0,
          height: 75.0,
          child:
          RaisedButton(
            onPressed: () {
              
            },
            child: Text("Sign Up",style: TextStyle(color : Colors.white, fontSize: 27, fontFamily: 'Quicksand', fontWeight: FontWeight.bold),  ),
          ),
        ),
            ],
          )
          ),
        );


  }

}
