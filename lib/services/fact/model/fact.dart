import 'package:json_annotation/json_annotation.dart';

part 'fact.g.dart';

@JsonSerializable()
class Fact {
  final String fact;
  final int length;

  Fact(this.fact, this.length);

  factory Fact.fromJson(Map<String, dynamic> json) => _$FactFromJson(json);
  Map<String, dynamic> toJson() => _$FactToJson(this);
}
