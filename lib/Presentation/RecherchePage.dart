import 'package:flutter/material.dart';

class RecherchePage extends StatefulWidget {
  @override
  _RecherchePageState createState() => _RecherchePageState();
}

class _RecherchePageState extends State<RecherchePage> {
  final initList = [
    'Echelle 1',
    'Echelle 2',
    'Echelle 3',
    'Volants Brulants',
    'Corde à sauter',
    'Tipping',
    'Double Suédois'
  ];

  TextEditingController editingController = TextEditingController();
  var elementsRecherches = List<String>();
  _RecherchePageState() {
    elementsRecherches.addAll(initList);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Recherche')),
        body: Column(children: [
          TextField(
            controller: editingController,
            decoration: InputDecoration(
                labelText: 'Rechercher',
                hintText: 'Rechercher',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)))),
            keyboardType: TextInputType.text,
            onChanged: (value) {
              filterSearch(value);
            },
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(title: Text('${elementsRecherches[index]}'));
            },
            itemCount: elementsRecherches.length,
          ))
        ]));
  }

  filterSearch(String query) {
    var searchList = List<String>();
    searchList.addAll(initList);
    if (query.isNotEmpty) {
      var resultListData = List<String>();
      searchList.forEach((element) {
        if (element.contains(query)) {
          resultListData.add(element);
        }
      });
      setState(() {
        elementsRecherches.clear();
        elementsRecherches.addAll(resultListData);
      });
      return;
    } else {
      setState(() {
        elementsRecherches.clear();
        elementsRecherches.addAll(initList);
      });
    }
  }
}
