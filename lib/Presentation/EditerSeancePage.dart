import 'package:anibad/Domain/Seance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Composants/TuilePhase.dart';
import 'Composants/TuileExercice.dart';

class EditerSeancePage extends StatelessWidget {
  static const routeName = 'seance/editer';
  EditerSeancePage();

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context).settings.arguments as EditerSeanceArguments;
    final seance = args.seance;
    return Scaffold(
        appBar: AppBar(
          title: Text('Anibad - Modifier ${seance.nom}'),
        ),
        body: ListView(
          children: <Widget>[
            Card(
                child: Container(
              decoration: BoxDecoration(color: Colors.pink[100]),
              child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('Thème : ${seance.theme}')),
            )),
            Card(
              child: Container(
                decoration: BoxDecoration(color: Colors.pink[50]),
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

class EditerSeanceArguments {
  final Seance seance;
  EditerSeanceArguments(this.seance);
}
