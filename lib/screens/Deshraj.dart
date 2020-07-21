import 'package:flutter/material.dart';
import 'package:login_app/screens/OrderPlaced.dart';

import 'DeshrajCart.dart';
import 'DeshrajConfirm.dart';
import 'food.dart';

class Deshraj extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

List<Food> foods = [Food('Chana Samosa', 30, 0), Food('Chai', 10, 0), Food('Coffee', 20, 0), Food('Patty', 40, 0), Food('Bread Butter', 20, 0)];

class _CartState extends State<Deshraj> {

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
          return DeshrajCart(
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
                    MaterialPageRoute(builder: (context) => Deshraj()),
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
            return DeshrajConfirm(
              food: foods[index],
            );
          }
      ),
    );
  }
}



// ignore: camel_case_types

