import 'package:anibad/Domain/Exercice.dart';
import 'package:anibad/Domain/Seance.dart';
import 'package:flutter/material.dart';
import 'Composants/TuileSeance.dart';

class AccueilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AniBad',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'AniBad - Saison 2020/21'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final List<Seance> entries = <Seance>[
      creerSeance1(),
      creerSeance2(),
      creerSeance3()
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

  Seance creerSeance3() {
    var seance = new Seance('Séance 3', 'Déplacement Avant-Arrière', '1er oct',
        'Position du pied sur le déplacement', false);
    seance.echauffement = [
      new Exercice(
          'footing autour du plateau', '(commentaire : réduit à 2/3 tours)', 5),
      new Exercice('Déverrouillage articulaire', '', 2),
      new Exercice('Volants brulants', '', 10),
    ];
    seance.corps = [
      new Exercice(
          'Routine Avant-Arriere (demi terrain)', 'Court/Court/Long', 15),
      new Exercice('Match Suédois', '', 20),
    ];
    seance.retourAuCalme = [
      new Exercice('Etirement au sol', '', 5),
    ];
    return seance;
  }

  Seance creerSeance2() {
    var seance = new Seance('Séance 2', 'Déplacement Avant-Arrière', '24 sept',
        'Position du pied sur le déplacement', true);
    seance.echauffement = [
      new Exercice(
          'footing autour du plateau', '(commentaire : réduit à 2/3 tours)', 5),
      new Exercice('Déverrouillage articulaire', '', 2),
      new Exercice('Volants brulants', '', 10),
    ];
    seance.corps = [
      new Exercice(
          'Routine Avant-Arriere (demi terrain)', 'Court/Court/Long', 15),
      new Exercice('Match Suédois', '', 20),
    ];
    seance.retourAuCalme = [
      new Exercice('Etirement au sol', '', 5),
    ];
    return seance;
  }

  Seance creerSeance1() {
    var seance = new Seance('Séance 1', 'Déplacement Avant-Arrière', '17 sept',
        'Position du pied sur le déplacement', true);
    seance.echauffement = [
      new Exercice(
          'footing autour du plateau', '(commentaire : réduit à 2/3 tours)', 5),
      new Exercice('Déverrouillage articulaire', '', 2),
      new Exercice('Volants brulants', '', 10),
    ];
    seance.corps = [
      new Exercice(
          'Routine Avant-Arriere (demi terrain)', 'Court/Court/Long', 15),
      new Exercice('Match Suédois', '', 20),
    ];
    seance.retourAuCalme = [
      new Exercice('Etirement au sol', '', 5),
    ];
    return seance;
  }

  ListView buildListView(BuildContext context, List<Seance> entries) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (_, int index) {
          return TuileSeance(seance: entries[index]);
        });
  }
}
