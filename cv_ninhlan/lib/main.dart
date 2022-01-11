import 'package:cv_ninhlan/page2.dart';
import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'langue.dart';
import 'académique.dart';
import 'Experiences.dart';
import 'autre.dart';
import 'competences.dart';
import 'projet.dart';
import 'description.dart';
import 'description2.dart';
import 'description3.dart';
import 'description4.dart';

void main() => runApp(CV_NINH_Lan());

class CV_NINH_Lan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xfff2ded2),
        scaffoldBackgroundColor: Color(0xfff2ded2),
      ),
      //home: Page1(),
      initialRoute: '/',
      routes: {
        '/': (context) => Page1(),
        '/cv': (context) => Page2(),
        '/cv/langue': (context) => Langue(),
        '/cv/academique': (context) => Academique(),
        '/cv/experiences': (context) => Experiences(),
        '/cv/autre': (context) => Autre(),
        '/cv/autre/competences': (context) => competences(),
        '/cv/autre/projets': (context) => Projet(),
        '/cv/autre/projets/description1': (context) => description1(),
        '/cv/autre/projets/description2': (context) => description2(),
        '/cv/autre/projets/description3': (context) => description3(),
        '/cv/autre/projets/description4': (context) => description4(),
      },
    );
  }
}
