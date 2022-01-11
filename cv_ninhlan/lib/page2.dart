import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'carte_reutilisable.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
            Center(
              child: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Curriculum Vitae',
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
                    'Curriculum Vitae',
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
                    child: CarteReutilisable(
                      onPress: () {
                        Navigator.pushNamed(context, '/cv/academique');
                      },
                      couleur: Colors.deepOrange.shade200.withOpacity(0.7),
                      cardChild: Center(
                        child: Text(
                          'Académique',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 27.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: CarteReutilisable(
                      onPress: () {
                        Navigator.pushNamed(context, '/cv/experiences');
                      },
                      couleur: Colors.deepOrange.shade200.withOpacity(0.7),
                      cardChild: Center(
                        child: Text(
                          'Professionnel',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 27.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
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
                    child: CarteReutilisable(
                      onPress: () {
                        Navigator.pushNamed(context, '/cv/langue');
                      },
                      couleur: Colors.deepOrange.shade200.withOpacity(0.7),
                      cardChild: Center(
                        child: Text(
                          'Langues',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 27.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: CarteReutilisable(
                      onPress: () {
                        Navigator.pushNamed(context, '/cv/autre');
                      },
                      couleur: Colors.deepOrange.shade200.withOpacity(0.7),
                      cardChild: Center(
                        child: Text(
                          'Autre',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 27.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
