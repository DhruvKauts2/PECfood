import 'package:flutter/material.dart';

import 'DeshrajCart.dart';
import 'DeshrajConfirm.dart';
import 'OrderPlaced.dart';
import 'food.dart';

class Deshraj extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Deshraj> {

  List<Food> foods = [Food('Chana Samosa', 30, 0), Food('Chai', 10, 0), Food('Coffee', 20, 0), Food('Patty', 40, 0), Food('Bread Butter', 20, 0)];
  int total = 0;

  @override
  Widget build(BuildContext context) {
    total = 0;
    setState(() {
      foods.forEach((food) {total += food.amount;});
    });
    return Scaffold(
      backgroundColor: Color(0xffedf6f9),
      appBar: AppBar(

        title: Text(
          'My Cart',
          style: TextStyle(
            fontSize: 28,
          ),),
        centerTitle: true,
        backgroundColor: Color(0xffe29578),
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
                color: Color(0xff006d77),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
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
            delete: () {
              setState(() {
                foods.remove(foods[index]);
              });
            },
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

  List<Food> foods = [Food('Chana Samosa', 30, 2), Food('Chai', 10, 3), Food('Coffee', 20, 1), Food('Patty', 40, 2), Food('Bread Butter', 20, 1)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffe29578),
        centerTitle: true,
        title: Text(
          "Confirm Your Order",
          style: TextStyle(
            fontSize: 28,
          ),),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(36,10,36,10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Deshraj()),
                  );
                },
                elevation: 8,
                color: Color(0xff006d77),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Go Back',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => OrderPlaced()));},
                elevation: 8,
                color: Color(0xff006d77),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
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