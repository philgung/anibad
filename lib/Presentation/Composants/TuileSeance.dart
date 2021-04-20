import 'package:flutter/material.dart';
import 'package:anibad/Domain/Seance.dart';
import '../SeancePage.dart';

class TuileSeance extends StatelessWidget {
  const TuileSeance({
    Key key,
    @required this.seance,
  }) : super(key: key);

  final Seance seance;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(seance.nom),
      subtitle: Text(seance.theme),
      leading: Column(
        children: [Icon(Icons.directions_run), Text(seance.date)],
      ),
      trailing: seance.estFini
          ? Icon(
              Icons.done,
              color: Colors.green,
            )
          : Icon(Icons.arrow_forward),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SeancePage(seance)));
      },
    );
  }
}
