import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Seance extends StatelessWidget {
  final int index;
  Seance(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Anibad')),
        body: ListView(
          children: const <Widget>[
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
                leading: Icon(Icons.timer),
                title: Text('5 min footing autour du plateau'),
                subtitle: Text('(commentaire : réduit à 2/3 tours)'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
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
                title: Text(
                    'Routine Avant-Arriere (demi terrain) Court/Court/Long'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Match Suédois'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ],
        ));
  }
}
