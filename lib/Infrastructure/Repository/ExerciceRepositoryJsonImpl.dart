import 'dart:convert';
import 'package:anibad/Domain/Exercice.dart';
import 'package:anibad/Domain/Repository/ExerciceRepository.dart';
import 'package:flutter/services.dart';

class ExerciceRepositoryJsonImpl implements ExerciceRepository {
  String fichierJson;
  ExerciceRepositoryJsonImpl(this.fichierJson);

  @override
  Future<Stream<Exercice>> recupererExercices() async {
    return new Stream.fromFuture(rootBundle.loadString(fichierJson))
        .transform(json.decoder)
        .expand((jsonBody) => (jsonBody as Map)['exercices'])
        .map<Exercice>((json) => ExerciceJsonDto.fromJson(json).toExercice());
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

  Exercice toExercice() {
    var exercice = Exercice(title, subtitle, duree);
    exercice.consignes = consignes;
    return exercice;
  }
}
