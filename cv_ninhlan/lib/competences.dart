import 'package:flutter/material.dart';
import 'carte_reutilisable.dart';

class competences extends StatefulWidget {
  @override
  _competencesState createState() => _competencesState();
}

class _competencesState extends State<competences> {
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
                    'Compétences',
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
                    'Compétences',
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'RÉSEAUX',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 17.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Windows (AD) | Linux | VLAN | Routeur | Ethernet | TCP-IP |',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'LAN WAN |Routage Dynamique | WIFI | Téléphonie IP | IOT |',
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'INFORMATIQUE',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 17.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'JAVA | HTML | Base de données | Architecture | LDAP |',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Python | MATLAB | Flutter',
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'TÉLÉCOM /ÉLECTRONIQUE',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 17.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Codage | Bande de base | Modulations | Spectre ',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Mesure des signaux |Filtrage | ADSL | Réseaux mobiles',
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
