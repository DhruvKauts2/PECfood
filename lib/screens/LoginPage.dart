import 'package:flutter/material.dart';
import 'package:login_app/screens/ShopList.dart';

import 'Home.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  var _formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController sidController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme
        .of(context)
        .textTheme
        .headline6;

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65),
      child: AppBar(
        title: Text('Login', style: TextStyle( color: Color(0xff3D405B), fontFamily: 'Pacifico', fontSize: 40,),),
        backgroundColor: Color(0xffF2CC8F),
        centerTitle: true,
      ),),
      body: Form(
        key: _formKey,
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                        top: 70.0, bottom: 20.0),
                    child: TextFormField(
                      style: textStyle,
                      controller: usernameController,
                      // ignore: missing_return
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter principal amount';
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: textStyle,
                          errorStyle: TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 15.0
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 20.0),
                    child: TextFormField(
                      style: textStyle,
                      controller: sidController,
                      // ignore: missing_return
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter rate of interest';
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'SID',
                          labelStyle: textStyle,
                          errorStyle: TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 15.0
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 20.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: TextFormField(
                              style: textStyle,
                              controller: passwordController,
                              // ignore: missing_return
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter time';
                                }
                              },
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: textStyle,
                                  errorStyle: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontSize: 15.0
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          5.0))),
                            )),
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: 8.0, top: 50.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            color: Color(0xffF2CC8F),
                            textColor: Color(0xff3D405B),
                            child: Text(
                              'Submit',
                              textScaleFactor: 1.5,
                            ),
                            onPressed: () {
                              if (checkUserName() == 1 && checkSid() == 1 &&
                                  checkPassword() == 1) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return ShopList();
                                    }));
                              }
                              else {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return Home();
                                    }));
                              }
                            },
                          ),
                        ),
                        Expanded(
                          child: RaisedButton(
                            color: Color(0xff3D405B),
                            textColor: Color(0xffF2CC8F),
                            child: Text(
                              'Reset',
                              textScaleFactor: 1.5,
                            ),
                            onPressed: () {
                              setState(() {
                                _reset();
                              });
                            },
                          ),
                        ),
                      ],
                    )),
                ],
            )),
      ),
    );
  }

  void _reset() {
    usernameController.text = '';
    sidController.text = '';
    passwordController.text = '';
  }

  int checkUserName() {
    switch (usernameController.text) {
      case "DhruvKauts":
      case "GuneetKaur":
      case "KavyaMalhotra":
      case "MannatMahajan":
        return 1;
        break;
      default:
        return 0;
    }
  }

  int checkSid() {
    int sid = int.parse(sidController.text);
    switch (sid) {
      case 19103085:
      case 19103098:
      case 19103086:
      case 19103091:
        return 1;
        break; //Don't know Mannat's SID :/
      default:
        return 0;
    }
  }

  int checkPassword() {
    switch (passwordController.text) {
      case "password":
        return 1;
        break;
      default:
        return 0;
    }
  }


}

