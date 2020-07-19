import 'package:flutter/material.dart';
import 'food.dart';

class AnnaConfirm extends StatefulWidget {
  final Food food;
  AnnaConfirm({ this.food });

  @override
  _AnnaConfirmState createState() => _AnnaConfirmState();
}

class _AnnaConfirmState extends State<AnnaConfirm> {
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

                Text(
                  widget.food.quantity.toString(),
                  style: TextStyle(
                    color: Color(0xff006d77),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
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