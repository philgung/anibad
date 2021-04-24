import 'dart:convert';
import 'dart:io';
import 'package:anibad/Domain/Exercice.dart';
import 'package:anibad/Domain/Repository/ExerciceRepository.dart';
import 'package:flutter/services.dart';

class ExerciceRepositoryJsonImpl implements ExerciceRepository {
  String fichierJson;
  ExerciceRepositoryJsonImpl(this.fichierJson);

  @override
  List<Exercice> recupererExercices() {
    String jsonString = litFichier();
    final exercicesMap = jsonDecode(jsonString).cast<Map<String, dynamic>>();
    var dtos = exercicesMap
        .map<ExerciceJsonDto>((json) => ExerciceJsonDto.fromJson(json))
        .toList();
    var exercices = List<Exercice>();
    for (var dto in dtos) {
      exercices.add(mapExercice(dto));
    }
    return exercices;
  }

  Future<Stream<Exercice>> getExercices() async {
    return new Stream.fromFuture(rootBundle.loadString(fichierJson))
        .transform(json.decoder)
        .expand((jsonBody) => (jsonBody as Map)['exercices'])
        .map<Exercice>((json) {
      var dto = ExerciceJsonDto.fromJson(json);
      return mapExercice(dto);
    });
  }

  // void listenForInitExercices() async {
  //   var stream = await ExerciceRepositoryJsonImpl('assets/exercices.json')
  //       .getExercices();
  //   stream.listen((exercice) => setState(() {
  //         initList.add(exercice);
  //         elementsRecherches.add(exercice);
  //       }));
  // }

  Exercice mapExercice(ExerciceJsonDto dto) {
    var exercice = Exercice(dto.title, dto.subtitle, dto.duree);
    exercice.consignes = dto.consignes;
    return exercice;
  }

  String litFichier() {
    return File(fichierJson).readAsStringSync();
  }
}

class ExerciceJsonDto {
  String title, subtitle, consignes;
  int duree;

  ExerciceJsonDto(this.title, this.subtitle, this.duree);
  ExerciceJsonDto.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        subtitle = json['subtitle'],
        consignes = json['consignes'],
        duree = json['duree'];
  Map<String, dynamic> toJson() => {
        'title': title,
        'subtitle': subtitle,
        'consignes': consignes,
        'duree': duree
      };
}
