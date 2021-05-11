import '../Exercice.dart';

abstract class ExerciceRepository {
  Future<Stream<Exercice>> recupererExercices();
}
