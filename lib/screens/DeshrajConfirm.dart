import 'package:flutter/material.dart';
import 'food.dart';

class DeshrajConfirm extends StatefulWidget {
  final Food food;
  DeshrajConfirm({ this.food });

  @override
  _DeshrajConfirmState createState() => _DeshrajConfirmState();
}

class _DeshrajConfirmState extends State<DeshrajConfirm> {

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

                Text(
                  widget.food.quantity.toString(),
                  style: TextStyle(
                    color: Color(0xff3D405B),
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