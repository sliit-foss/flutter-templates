import 'package:catfacts/services/core/api.service.dart';
import 'package:catfacts/services/fact/model/fact.dart';

export "model/fact.dart";

class FactService {
  static Future<Fact> getFact() async {
    Map<String, dynamic> res = await http.get("/fact");
    return Fact.fromJson(res);
  }

  static Future<List<Fact>> getFacts() async {
    dynamic response = await http.get("/facts");
    return (response["data"] as List).map((fact) => Fact.fromJson(fact)).toList();
  }
}
