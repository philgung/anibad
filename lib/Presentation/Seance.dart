import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'LogoChrono.dart';

class Seance extends StatelessWidget {
  final int index;
  Seance(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Anibad')),
        body: ListView(
          children: <Widget>[
            Card(
                child: ListTile(
                    leading: FlutterLogo(),
                    title: Text('Thème : Déplacement Avant-Arrière'))),
            Card(
              child: ListTile(
                title: Text(
                  'Objectifs : Position du pied sur le déplacement',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Echauffement',
                  style: TextStyle(color: Colors.blue),
                ),
                dense: true,
              ),
            ),
            Card(
              child: ListTile(
                leading: LogoChrono(5),
                title: Text('footing autour du plateau'),
                subtitle: Text('(commentaire : réduit à 2/3 tours)'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: LogoChrono(5),
                title: Text('Déverrouillage articulaire'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Corps', style: TextStyle(color: Colors.blue)),
                dense: true,
              ),
            ),
            Card(
              child: ListTile(
                leading: LogoChrono(15),
                title: Text(
                    'Routine Avant-Arriere (demi terrain) Court/Court/Long'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: LogoChrono(20),
                title: Text('Match Suédois'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ],
        ));
  }
}
