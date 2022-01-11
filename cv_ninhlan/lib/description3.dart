import 'package:flutter/material.dart';
import 'carte_reutilisable.dart';

class description3 extends StatefulWidget {
  @override
  _description3State createState() => _description3State();
}

class _description3State extends State<description3> {
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
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
              height: 20.0,
            ),
            Center(
              child: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Projets',
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
                    'Projets',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: CarteReutilisable(
                      couleur: Colors.deepOrange.shade200.withOpacity(0.7),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                'Interface de configuration',
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'des routeurs Cisco',
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'Conception d\'une interface homme-machine',
                                style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 17.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'pour le configuration des routeurs Cisco',
                                style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 17.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'avec Python en utilisant',
                                style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 17.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'QtDesigner et Paramiko',
                                style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 17.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70.0,
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
