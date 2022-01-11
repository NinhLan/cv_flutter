import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/ecrant.gif',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/cv');
              },
              child: CircleAvatar(
                radius: 90.0,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
            ),
            Text(
              'Thi Hoa Lan NINH',
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Étudiante',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 20.0,
                color: Colors.orange.shade50,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.orange.shade50,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.contact_phone,
                  size: 25.0,
                  color: Colors.brown.shade800,
                ),
                title: Text(
                  "+33 (0)7 50 47 09 50",
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 17.5,
                    color: Colors.brown.shade800,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.contact_mail,
                  size: 25.0,
                  color: Colors.brown.shade800,
                ),
                title: Text(
                  "thi-hoa-lan.ninh@etu.u-pec.fr",
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 17.5,
                    color: Colors.brown.shade800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
