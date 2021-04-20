import 'Exercice.dart';

class Seance {
  String nom, theme, date, objectifs;
  bool estFini;
  List<Exercice> echauffement;
  List<Exercice> corps;
  List<Exercice> retourAuCalme;

  Seance(this.nom, this.theme, this.date, this.objectifs, this.estFini);
}
