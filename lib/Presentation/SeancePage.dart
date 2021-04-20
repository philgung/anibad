import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'TuilePhase.dart';
import 'TuileExercice.dart';

class SeancePage extends StatelessWidget {
  final int index;
  SeancePage(this.index);

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
            TuilePhase('Echauffement'),
            TuileExercice('footing autour du plateau',
                '(commentaire : réduit à 2/3 tours)', 5),
            TuileExercice('Déverrouillage articulaire', '', 5),
            TuileExercice('Volants brulants', '', 10),
            TuilePhase('Corps'),
            TuileExercice(
                'Routine Avant-Arriere (demi terrain)', 'Court/Court/Long', 15),
            TuileExercice('Match Suédois', '', 20),
            TuilePhase('Retour au calme'),
            TuileExercice('Etirement au sol', '', 5),
          ],
        ));
  }
}
