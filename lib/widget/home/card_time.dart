import 'package:flutter/material.dart';

Widget buildTimeCard(String salatTime, String time) {
    return Card(
      elevation: 0,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Column(
          children: <Widget>[
            Text(salatTime),
            Text(
              time,
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }