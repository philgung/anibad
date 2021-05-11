import 'package:anibad/Domain/Exercice.dart';
import 'package:anibad/Infrastructure/Repository/ExerciceRepositoryJsonImpl.dart';
import 'package:anibad/Presentation/Composants/TuileExercice.dart';
import 'package:flutter/material.dart';

class RecherchePage extends StatefulWidget {
  @override
  _RecherchePageState createState() => _RecherchePageState();
}

class _RecherchePageState extends State<RecherchePage> {
  List<Exercice> initList;
  TextEditingController editingController = TextEditingController();
  List<Exercice> elementsRecherches;
  _RecherchePageState() {
    elementsRecherches = List<Exercice>();
    initList = List<Exercice>();
  }

  @override
  void initState() {
    super.initState();
    listenForInitExercices();
  }

  void listenForInitExercices() async {
    var stream = await ExerciceRepositoryJsonImpl('assets/exercices.json')
        .recupererExercices();
    stream
        .listen((exercice) => setState(() {
              initList.add(exercice);
            }))
        .onDone(() {
      elementsRecherches.addAll(initList);
    });
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
              return TuileExercice(elementsRecherches[index]);
            },
            itemCount: elementsRecherches.length,
          ))
        ]));
  }

  filterSearch(String query) {
    var searchList = List<Exercice>();
    searchList.addAll(initList);
    if (query.isNotEmpty) {
      var resultListData = List<Exercice>();
      searchList.forEach((element) {
        if (element.title.contains(query) || element.subtitle.contains(query)) {
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
