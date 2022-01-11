import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'carte_reutilisable.dart';

class Experiences extends StatefulWidget {
  @override
  _ExperiencesState createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences> {
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
                    'Expérience',
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
                    'Expérience',
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
                        launch(
                            'https://www.chicreteil.fr/offre-de-soin/hepato-gastro-enterologie/');
                      },
                      couleur: Colors.deepOrange.shade200.withOpacity(0.7),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Hôpital Intercommunal Créteil',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 17.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Stage 6 semaines (juin 2021)',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 13.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'service d’hépato-gastro-entérologie',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: CarteReutilisable(
                      couleur: Colors.deepOrange.shade200.withOpacity(0.7),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Garde d\'enfant',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 17.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '(2017-2018) - Orly',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 13.0,
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
                      couleur: Colors.deepOrange.shade200.withOpacity(0.7),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Certificat NetAcad Cisco ',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 17.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Certificat NDG Linux Essentials',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 13.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
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
          ],
        ),
      ),
    );
  }
}
