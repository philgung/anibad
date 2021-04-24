import 'dart:convert';
import 'dart:async' show Future;
import 'package:anibad/Domain/Exercice.dart';
import 'package:anibad/Domain/Repository/ExerciceRepository.dart';
import 'package:flutter/services.dart';

class ExerciceRepositoryJsonImpl implements ExerciceRepository {
  String fichierJson;
  ExerciceRepositoryJsonImpl(this.fichierJson);

  @override
  List<Exercice> recupererExercices() {
    String jsonString;
    // final String jsonString = litJson();

    final exercicesMap = jsonDecode(jsonString).cast<Map<String, dynamic>>();
    var dtos = exercicesMap
        .map<ExerciceJsonDto>((json) => ExerciceJsonDto.fromJson(json))
        .toList();
    var exercices = List<Exercice>();
    for (var dto in dtos) {
      var exercice = Exercice(dto.title, dto.subtitle, dto.duree);
      exercice.consignes = dto.consignes;
      exercices.add(exercice);
    }
    return exercices;
  }

  Future<String> litJson() async {
    final String response =
        await rootBundle.loadString('assets/exercices.json');
    return response;
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
