import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(

                child: Container(
                    constraints: BoxConstraints.expand(),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://as1.ftcdn.net/jpg/01/88/12/76/500_F_188127684_wljoa6x4UlRNw6qKv6TRId2d2juu66Mt.jpg"),
                            fit: BoxFit.cover)

                    ),

            ),


        ),
        
        )
    );
  }
}

class Button1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            "Login",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,

            ),
          ),
          elevation: 6.0,
          onPressed: () {}),
    );
  }
}
