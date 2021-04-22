import 'package:anibad/Domain/Exercice.dart';
import 'package:anibad/Domain/Repository/SeanceRepository.dart';
import 'package:anibad/Domain/Seance.dart';

class SeanceRepositoryInMemoryImpl implements SeanceRepository {
  @override
  List<Seance> recupererSeances() {
    return [creerSeance1(), creerSeance2(), creerSeance3()];
  }

  Seance creerSeance3() {
    var seance = new Seance('Séance 3', 'Déplacement Avant-Arrière', '1er oct',
        'Position du pied sur le déplacement', false);
    seance.echauffement = [
      new Exercice(
          'footing autour du plateau', '(commentaire : réduit à 2/3 tours)', 5),
      new Exercice('Déverrouillage articulaire', '', 2),
      new Exercice('Volants brulants', '', 10),
    ];
    seance.corps = [
      new Exercice(
          'Routine Avant-Arriere (demi terrain)', 'Court/Court/Long', 15),
      new Exercice('Match Suédois', '', 20),
    ];
    seance.retourAuCalme = [
      new Exercice('Etirement au sol', '', 5),
    ];
    return seance;
  }

  Seance creerSeance2() {
    var seance = new Seance('Séance 2', 'Déplacement Avant-Arrière', '24 sept',
        'Position du pied sur le déplacement', true);
    seance.echauffement = [
      new Exercice('Déverrouillage articulaire', '', 2),
      new Exercice('Tipping', '- croix\n-avant/arrière', 5),
      new Exercice('Volants brulants', '', 10),
    ];
    seance.corps = [
      new Exercice(
          'Routine Avant-Arriere (demi terrain)', 'Court/Court/Long', 15),
      new Exercice('Match Suédois', '', 20),
    ];
    seance.retourAuCalme = [
      new Exercice('Etirement au sol', '', 5),
    ];
    return seance;
  }

  Seance creerSeance1() {
    var seance = new Seance('Séance 1', 'Déplacement Avant-Arrière', '17 sept',
        'Position du pied sur le déplacement', true);
    seance.echauffement = [
      new Exercice(
          'footing autour du plateau', '(commentaire : réduit à 2/3 tours)', 5),
      new Exercice('Déverrouillage articulaire', '', 2),
      new Exercice('Volants brulants', '', 10),
    ];
    seance.corps = [
      new Exercice(
          'Routine Avant-Arriere (demi terrain)', 'Court/Court/Long', 15),
      new Exercice('Match Suédois', '', 20),
    ];
    seance.retourAuCalme = [
      new Exercice('Etirement au sol', '', 5),
    ];
    return seance;
  }
}
