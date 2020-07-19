import 'package:flutter/material.dart';
import 'package:login_app/screens/OrderPlaced.dart';

import 'AnnaCart.dart';
import 'AnnaConfirm.dart';
import 'food.dart';

class Anna extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Anna> {

  List<Food> foods = [Food('Plain Dosa', 40, 0), Food('Masala Dosa', 60, 0), Food('Idli', 40, 0), Food('Vada', 40, 0), Food('Onion Uttapam', 60, 0)];
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
          return AnnaCart(
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

  List<Food> foods = [Food('Plain Dosa', 40, 2), Food('Masala Dosa', 60, 3), Food('Idli', 40, 1), Food('Vada', 40, 2), Food('Onion Uttapam', 80, 1),];

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
                    MaterialPageRoute(builder: (context) => Anna()),
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
                      MaterialPageRoute(builder: (context) => OrderPlaced()));
                },
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
            return AnnaConfirm(
              food: foods[index],
            );
          }
      ),
    );
  }
}



// ignore: camel_case_types
