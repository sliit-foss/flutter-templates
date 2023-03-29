part of 'fact.dart';

Fact _$FactFromJson(Map<String, dynamic> json) {
  return Fact(
    json["fact"] as String,
    json["length"] as int,
  );
}

Map<String, dynamic> _$FactToJson(Fact instance) => <String, dynamic>{
  'fact': instance.fact,
  'length': instance.length,
};
