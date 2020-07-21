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
      backgroundColor: Color(0xff3D405B),
        appBar: PreferredSize(preferredSize: Size.fromHeight(70),
          child: AppBar(
            iconTheme: IconThemeData( color: Color(0xff81B29B)),
            title: Text('List of shops', style: TextStyle( color: Color(0xff81B29B), fontFamily: 'Pacifico', fontSize: 40,),),
          backgroundColor: Color(0xffF4F1DE),
            centerTitle: true,
        ),),
      body:
      getListView(context),


    );
  }
}

Widget getListView(BuildContext context) {

  var listView = ListView(
    children: <Widget>[

      Padding(
        padding: const EdgeInsets.fromLTRB(0,40,0,0),
        child: ListTile(

          title: Text("Anna", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 26, color: Color(0xffE07A5F)),),
          subtitle: Text(""),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return Anna();
                }));
          },
        ),
      ),

      ListTile(

        title: Text("Combo", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 26, color: Color(0xffE07A5F)),),
        subtitle: Text(""),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return Combo();
              }));
        },
      ),
      ListTile(

        title: Text("Deshraj", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 26, color: Color(0xffE07A5F)),),
        subtitle: Text(""),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return Deshraj();
              }));
        },
      ),



      ListTile(

        title: Text("Juice Corner", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 26, color: Color(0xffE07A5F)),),
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