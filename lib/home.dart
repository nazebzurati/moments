import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import 'package:waktuku/about.dart';
import 'package:waktuku/zone.dart';
import 'package:waktuku/logic/common.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  Widget timeCard(String salatTime, String time) {
    DateTime timeNow = DateFormat('kk:mm').parse(DateFormat('kk:mm').format(DateTime.now()));
    DateTime timeSalat = DateFormat('kk:mm').parse(time);
    bool isCurrentSalatTime = (timeSalat.isBefore(timeNow)) ? true : false;
    return Card(
      elevation: 0,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Column(
          children: <Widget>[
            Text(salatTime),
            Text(
              time,
              style: TextStyle(fontSize: 25, color: (isCurrentSalatTime) ? appThemeColor : Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.syncAlt,
              color: appThemeColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.mapMarker,
              color: appThemeColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ZonePage()),
              );
            },
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.info,
              color: appThemeColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                children: <Widget>[
                  Text('25 Jamadilawal 1441 Hijri'),
                  Text(
                    'SGR03',
                    style: TextStyle(
                      fontSize: 40,
                      color: appThemeColor,
                    ),
                  ),
                  Text('Klang, Kuala Langat')
                ],
              ),
            ),
            timeCard('Imsak', '06:05'),
            timeCard('Subuh', '06:15'),
            timeCard('Syuruk', '07:24'),
            timeCard('Dhuha', '07:47'),
            timeCard('Zohor', '13:27'),
            timeCard('Asar', '16:49'),
            timeCard('Maghrib', '19:25'),
            timeCard('Isya', '20:38'),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
