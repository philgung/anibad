import 'package:anibad/Domain/Exercice.dart';
import 'package:anibad/Domain/Repository/ExerciceRepository.dart';

class ExerciceRepositoryInMemoryImpl implements ExerciceRepository {
  @override
  List<Exercice> recupererExercices() {
    return [
      Exercice('Echelle 1',
          '1 appui dans chaque espace - Garder la raquette devant soi', 5),
      Exercice('Echelle 2',
          '1 appui dans chaque espace - Pied avant dans l' 'axe', 5),
      Exercice('Echelle 3',
          'Appuis écartés-serrés-écartés - Garder la raquette devant soi', 5),
      Exercice(
          'Echelle 4', 'Appuis ext-int-ext - Garder la raquette devant soi', 5),
      Exercice(
          'Echelle 5',
          '2 appuis au même niveau - 1 dans l'
              'échelle, 1 en dehors - Montée de genou  pour le pied extérieur - Garder la raquette devant soi',
          5),
      Exercice(
          'Echelle 6',
          '2 appuis au même niveau - 1 dans l'
              'échelle, 1 en dehors - Talon-fesse pour le pied extérieur - Garder la raquette devant soi',
          5),
      Exercice('Echelle 7',
          'Un pied chasse l' 'autre - Garder la raquette devant soi', 5),
      Exercice('Echelle 8',
          'Dedans 1 pied, dehors 2 pieds - Garder la raquette devant soi', 5),
      Exercice('Echelle 9', 'Frappe main haute - Rotation simultanée', 5),
      Exercice('Corde à sauter', '', 5),
      Exercice('Tipping', '', 5),
      Exercice('Double Suédois', '', 5)
    ];
  }
}
