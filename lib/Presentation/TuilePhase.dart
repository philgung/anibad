import 'package:flutter/material.dart';

class TuilePhase extends StatelessWidget {
  final String nom;

  const TuilePhase(
    this.nom, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          nom,
          style: TextStyle(color: Colors.blue),
        ),
        dense: true,
      ),
    );
  }
}
