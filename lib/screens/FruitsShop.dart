import 'package:flutter/material.dart';
import 'package:login_app/screens/OrderPlaced.dart';

import 'FruitsShopCart.dart';
import 'FruitsShopConfirm.dart';
import 'food.dart';

class JuiceCorner extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

List<Food> foods = [Food('Fruit Chat', 40, 0), Food('Fruit Juice(s)', 40, 0), Food('Fruit Juice(L)', 60, 0)];

class _CartState extends State<JuiceCorner> {

  int total = 0;

  @override
  Widget build(BuildContext context) {
    total = 0;
    setState(() {
      foods.forEach((food) {total += food.amount;});
    });
    return Scaffold(
      backgroundColor: Color(0xffF4F1DE),
      appBar: PreferredSize(preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text('My Cart', style: TextStyle( color: Color(0xffF2CC8F), fontFamily: 'Pacifico', fontSize: 40,),),
          backgroundColor: Color(0xff81B29B),
          centerTitle: true,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(26,10,26,10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Total = Rs ' + total.toString(),
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                ),),
              RaisedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Confirm())
                  );
                },
                elevation: 8,
                color: Color(0xffF2CC8F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Pacifico',
                    color: Color(0xff3D405B),
                  ),
                ),
              ),
            ],
          ),
        ),
        color: Color(0xffe29578),
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return FruitsShopCart(
            food: foods[index],
            updateTotal: () {
              setState(() {
                foods.forEach((food) {total += food.amount;});
              });
            },
          );
        },
      ),
    );
  }
}



class Confirm extends StatelessWidget {

  int total = 0;

  @override
  Widget build(BuildContext context) {
    foods.forEach((food) {total += food.amount;});
    return Scaffold(
      backgroundColor: Color(0xffF4F1DE),
      appBar: PreferredSize(preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text('Confirm Order', style: TextStyle( color: Color(0xffF2CC8F), fontFamily: 'Pacifico', fontSize: 40,),),
          backgroundColor: Color(0xff81B29B),
          centerTitle: true,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,8,20,8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Total = Rs ' + total.toString(),
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),),
              RaisedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => JuiceCorner()),
                  );
                },
                elevation: 8,
                color: Color(0xffF2CC8F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Back',
                  style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Pacifico',
                    color: Color(0xff3D405B),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => OrderPlaced()));},
                elevation: 8,
                color: Color(0xffF2CC8F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Pacifico',
                    color: Color(0xff3D405B),
                  ),
                ),
              ),
            ],
          ),
        ),
        color: Color(0xffe29578),
      ),
      body: ListView.builder(
          itemCount: foods.length,
          itemBuilder: (context, index) {
            return FruitsShopConfirm(
              food: foods[index],
            );
          }
      ),
    );
  }
}



// ignore: camel_case_types

