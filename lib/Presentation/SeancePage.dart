import 'package:anibad/Domain/Seance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Composants/TuilePhase.dart';
import 'Composants/TuileExercice.dart';

class SeancePage extends StatelessWidget {
  final Seance seance;
  SeancePage(this.seance);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Anibad - ${seance.nom}')),
        body: ListView(
          children: <Widget>[
            Card(
                child: Container(
              decoration: BoxDecoration(color: Colors.blue[100]),
              child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Thème : ${seance.theme}')),
            )),
            Card(
              child: Container(
                decoration: BoxDecoration(color: Colors.blue[50]),
                child: ListTile(
                  title: Text(
                    'Objectifs : ${seance.objectifs}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            TuilePhase('Echauffement'),
            TuileExercice(seance.echauffement[0]),
            TuileExercice(seance.echauffement[1]),
            TuileExercice(seance.echauffement[2]),
            TuilePhase('Corps'),
            TuileExercice(seance.corps[0]),
            TuileExercice(seance.corps[1]),
            TuilePhase('Retour au calme'),
            TuileExercice(seance.retourAuCalme[0]),
          ],
        ));
  }
}
