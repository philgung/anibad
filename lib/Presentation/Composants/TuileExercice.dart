import 'package:anibad/Domain/Exercice.dart';
import 'package:flutter/material.dart';
import 'LogoChrono.dart';

class TuileExercice extends StatelessWidget {
  final Exercice exercice;
  const TuileExercice(
    this.exercice, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: LogoChrono(exercice.duree),
        title: Text(exercice.title),
        subtitle: Text(exercice.subtitle),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
