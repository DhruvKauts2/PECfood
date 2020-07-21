import 'package:flutter/material.dart';
import 'food.dart';

class ComboCart extends StatefulWidget {
  final Food food;
  final Function updateTotal;
  ComboCart({ this.food, this.updateTotal});

  @override
  _ComboCartState createState() => _ComboCartState();
}

class _ComboCartState extends State<ComboCart> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(36, 16, 36, 0),
      color: Color(0xffF4E5C3),
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
                    color: Color(0xff3D405B),
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
                      color: Color(0xff3D405B),
                    ),
                    Text(
                      widget.food.quantity.toString(),
                      style: TextStyle(
                        color: Color(0xff3D405B),
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
                      },
                      child: Text(
                        '-',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xff3D405B),
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
                    color: Color(0xffE07A5F),
                  ),
                ),
                Text(
                  'Rs ' + widget.food.amount.toString(),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xffE07A5F),
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