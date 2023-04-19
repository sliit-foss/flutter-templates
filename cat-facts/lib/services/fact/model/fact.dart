import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fact.g.dart';

@JsonSerializable()
class Fact extends Equatable {
  final String fact;
  final int length;

  Fact(this.fact, this.length);

  factory Fact.fromJson(Map<String, dynamic> json) => _$FactFromJson(json);
  Map<String, dynamic> toJson() => _$FactToJson(this);

  @override
  List<Object?> get props => [fact, length];
}
