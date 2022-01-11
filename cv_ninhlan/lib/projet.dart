import 'package:flutter/material.dart';
import 'carte_reutilisable.dart';

class Projet extends StatefulWidget {
  @override
  _ProjetState createState() => _ProjetState();
}

class _ProjetState extends State<Projet> {
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
                      onPress: () {
                        Navigator.pushNamed(
                            context, '/cv/autre/projets/description1');
                      },
                      couleur: Colors.deepOrange.shade200.withOpacity(0.7),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Simulation de robot dans Webots',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'à l\'aide de Python',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: CarteReutilisable(
                      onPress: () {
                        Navigator.pushNamed(
                            context, '/cv/autre/projets/description2');
                      },
                      couleur: Colors.deepOrange.shade200.withOpacity(0.7),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Simulation et correction d\'erreurs',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'sous MATLAB',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
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
                      onPress: () {
                        Navigator.pushNamed(
                            context, '/cv/autre/projets/description3');
                      },
                      couleur: Colors.deepOrange.shade200.withOpacity(0.7),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Interface de configuration',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'des routeurs Cisco',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: CarteReutilisable(
                      onPress: () {
                        Navigator.pushNamed(
                            context, '/cv/autre/projets/description4');
                      },
                      couleur: Colors.deepOrange.shade200.withOpacity(0.7),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Projet tutoré DUT',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
