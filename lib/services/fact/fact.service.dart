import 'package:catfacts/services/core/api.service.dart';
import 'package:catfacts/services/fact/model/fact.dart';

export "model/fact.dart";

class FactService {
  static Future<Fact> getFact() async {
    Map<String, dynamic> res = await http.get("/fact");
    return Fact.fromJson(res);
  }

  static Future<List<Fact>> getFacts() async {
    List<Map<String, dynamic>> facts = await http.get("/facts");
    return facts.map((fact) => Fact.fromJson(fact)).toList();
  }
}
