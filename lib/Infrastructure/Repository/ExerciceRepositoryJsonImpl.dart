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
        .map<Exercice>((json) {
      var dto = ExerciceJsonDto.fromJson(json);
      return mapExercice(dto);
    });
  }

  Exercice mapExercice(ExerciceJsonDto dto) {
    var exercice = Exercice(dto.title, dto.subtitle, dto.duree);
    exercice.consignes = dto.consignes;
    return exercice;
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
