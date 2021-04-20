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
    final List<String> entries = <String>['1', '2', '3'];
    final List<int> colorCodes = <int>[600, 500, 100];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: buildListView(context, entries, colorCodes)),
      floatingActionButton:
          FloatingActionButton(tooltip: 'Increment', child: Icon(Icons.add)),
    );
  }

  ListView buildListView(
      BuildContext context, List<String> entries, List<int> colorCodes) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (_, int index) {
          return ListTile(
            title: Text('Séance ${entries[index]}'),
            subtitle: Text('Subtitle'),
            leading: Icon(Icons.thumb_up),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SeancePage(index + 1)));
            },
          );
        });
  }
}
