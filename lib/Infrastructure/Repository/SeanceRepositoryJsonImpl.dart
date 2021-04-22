import 'package:anibad/Domain/Repository/SeanceRepository.dart';
import 'package:anibad/Domain/Seance.dart';

class SeanceRepositoryJsonImpl implements SeanceRepository {
  final String jsonChemin;
  SeanceRepositoryJsonImpl(this.jsonChemin);
  @override
  List<Seance> recupererSeances() {
    // jsonDecode(text)
    // TODO: implement recupererSeances
    throw UnimplementedError();
  }
}
