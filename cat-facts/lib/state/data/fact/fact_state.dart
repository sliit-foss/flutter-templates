part of 'fact_bloc.dart';

class FactState extends Equatable {
  late DataList<Fact> facts;

  FactState({
    DataList<Fact>? facts,
  }) {
    this.facts = facts ?? DataList(const []);
  }

  FactState copyWith({DataList<Fact>? facts}) =>
      FactState(
        facts: facts ?? this.facts,
      );

  @override
  List get props => [facts];
}
