import 'package:catfacts/services/core/api.instance.dart';
import 'package:catfacts/models/fact/fact.dart';

class FactService {
  static Future<Fact> getFact() async {
    Map<String, dynamic> res = await http.get("/fact");
    return Fact.fromJson(res);
  }
}