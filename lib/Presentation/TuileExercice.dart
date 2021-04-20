import 'package:flutter/material.dart';
import 'LogoChrono.dart';

class TuileExercice extends StatelessWidget {
  final String title;
  final String subtitle;
  final int duree;
  const TuileExercice(
    this.title,
    this.subtitle,
    this.duree, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: LogoChrono(duree),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
