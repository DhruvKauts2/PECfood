import 'package:flutter/material.dart';

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
    );
  }
}