import 'package:flutter/material.dart';
import 'Anna.dart';
import 'Combo.dart';
import 'Deshraj.dart';
import 'FruitsShop.dart';
class ShopList extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _ShopListState();
  }
}

class _ShopListState extends State<ShopList> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('List of shops'),
        backgroundColor: Colors.black,
      ),
      body:
      getListView(context),


    );
  }
}

Widget getListView(BuildContext context) {

  var listView = ListView(
    children: <Widget>[

      ListTile(

        title: Text("Anna"),
        subtitle: Text(""),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return Anna();
              }));
        },
      ),

      ListTile(

        title: Text("Combo"),
        subtitle: Text(""),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return Combo();
              }));
        },
      ),
      ListTile(

        title: Text("Deshraj"),
        subtitle: Text(""),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return Deshraj();
              }));
        },
      ),



      ListTile(

        title: Text("Juice Corner"),
        subtitle: Text(""),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return JuiceCorner();
              }));
        },

      ),


    ],
  );

  return listView;
}