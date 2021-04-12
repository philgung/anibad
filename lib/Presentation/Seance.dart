import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Seance extends StatelessWidget {
  final int index;
  Seance(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Anibad')),
      body: Center(
          child: Text(
        '$index/\n' +
            'Thème : Déplacement Avant-Arrière\n' +
            'Objectifs : Position du pied sur le déplacement\n' +
            'Echauffement:\n' +
            '- 5 min footing autour du plateau (commentaire : réduit à 2/3 tours)\n' +
            '- Déverrouillage articulaire\n' +
            'Corps\n' +
            '\n' +
            '\n',
        style: TextStyle(fontSize: 18),
      )),
    );
  }
}
