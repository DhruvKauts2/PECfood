import'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/screens/ShopList.dart';

class OrderPlaced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: Row(
          children: <Widget>[
            RaisedButton(
              child: Text("Shop More"),
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ShopList()),
                );
              },
            ),
            RaisedButton(
              child: Text("Exit"),
              onPressed: () {
                SystemNavigator.pop();
              },
                ),
          ],
        ),
      ),
    );
  }
}
