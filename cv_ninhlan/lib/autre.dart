import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'carte_reutilisable.dart';

class Autre extends StatefulWidget {
  @override
  _AutreState createState() => _AutreState();
}

class _AutreState extends State<Autre> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              child: Container(
                height: 130.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage(
                        'images/avatar.jpg',
                      ),
                    ),
                    Text(
                      'Thi Hoa Lan NINH',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade200.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Compétences/Pojets',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.brown,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Compétences/Pojets',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        height: 160.0,
                        child: Center(
                          child: Text(
                            'Compétences',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 27.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange.shade200.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/cv/autre/competences');
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        height: 160.0,
                        child: Center(
                          child: Text(
                            'Projets',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 27.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange.shade200.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/cv/autre/projets');
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 50.0,
                    color: Colors.deepOrange.shade200,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
