import 'package:flutter/material.dart';

import 'SeancePage.dart';

class AccueilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AniBad',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'AniBad'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final List<Seance> entries = <Seance>[
      new Seance('Séance 1', 'Déplacement Avant-Arrière',
          'Mardi 17 septembre 2020', 'Position du pied sur le déplacement'),
      new Seance('Séance 2', 'Déplacement Avant-Arrière',
          'Mardi 24 septembre 2020', 'Position du pied sur le déplacement'),
      new Seance('Séance 3', 'Déplacement Avant-Arrière',
          'Mardi 1 octobre 2020', 'Position du pied sur le déplacement'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: buildListView(context, entries)),
      floatingActionButton:
          FloatingActionButton(tooltip: 'Increment', child: Icon(Icons.add)),
    );
  }

  ListView buildListView(BuildContext context, List<Seance> entries) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (_, int index) {
          return ListTile(
            title: Text(entries[index].nom),
            subtitle: Text(entries[index].theme + '\n' + entries[index].date),
            leading: Icon(Icons.directions_run),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SeancePage(entries[index])));
            },
          );
        });
  }
}

class Seance {
  String nom, theme, date, objectifs;
  List<Exercice> echauffement;
  List<Exercice> corps;
  List<Exercice> retourAuCalme;

  Seance(this.nom, this.theme, this.date, this.objectifs) {
    echauffement = [
      new Exercice(
          'footing autour du plateau', '(commentaire : réduit à 2/3 tours)', 5),
      new Exercice('Déverrouillage articulaire', '', 5),
      new Exercice('Volants brulants', '', 10),
    ];
    corps = [
      new Exercice(
          'Routine Avant-Arriere (demi terrain)', 'Court/Court/Long', 15),
      new Exercice('Match Suédois', '', 20),
    ];
    retourAuCalme = [
      new Exercice('Etirement au sol', '', 5),
    ];
  }
}

class Exercice {
  String title, subtitle;
  int duree;

  Exercice(this.title, this.subtitle, this.duree);
}
