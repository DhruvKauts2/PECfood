import 'package:flutter/material.dart';
import 'food.dart';

class AnnaCart extends StatefulWidget {
  final Food food;
  final Function updateTotal;
  final Function delete;
  AnnaCart({ this.food, this.delete, this.updateTotal});

  @override
  _AnnaCartState createState() => _AnnaCartState();
}

class _AnnaCartState extends State<AnnaCart> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(36, 16, 36, 0),
      color: Color(0xffffddd2),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.food.item,
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Color(0xff006d77),
                  ),
                ),
                ButtonBar(
                  buttonMinWidth: 40,
                  buttonHeight: 25,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          widget.food.quantity += 1;
                          widget.food.amount = widget.food.rate * widget.food.quantity;
                          widget.updateTotal();
                        });
                      },
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0x80e29578),
                    ),
                    Text(
                      widget.food.quantity.toString(),
                      style: TextStyle(
                        color: Color(0xff006d77),
                        fontSize: 18,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          widget.food.quantity -= 1;
                          widget.food.amount = widget.food.rate * widget.food.quantity;
                          widget.updateTotal();
                        });
                        if(widget.food.quantity == 0) {
                          widget.delete();
                        }
                      },
                      child: Text(
                        '-',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0x80e29578),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Rs ' + widget.food.rate.toString(),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xff83c5be),
                  ),
                ),
                Text(
                  'Rs ' + widget.food.amount.toString(),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xff83c5be),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}