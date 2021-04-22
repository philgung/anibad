import 'package:anibad/Domain/Seance.dart';
import 'package:anibad/Infrastructure/Repository/SeanceRepositoryInMemoryImpl.dart';
import 'package:flutter/material.dart';
import 'Composants/TuileSeance.dart';
import 'RecherchePage.dart';

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
    final List<Seance> seances =
        SeanceRepositoryInMemoryImpl().recupererSeances();

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(child: buildListView(context, seances)),
        floatingActionButton:
            // ignore: missing_required_param
            FloatingActionButton(
                tooltip: 'Increment',
                child: Icon(Icons.add),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RecherchePage()))));
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
