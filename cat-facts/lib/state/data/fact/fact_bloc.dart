import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:catfacts/services/fact/fact.service.dart';
import 'package:catfacts/types/types.dart';

part 'fact_event.dart';
part 'fact_state.dart';

class FactBloc extends Bloc<FactEvent, FactState> {
  FactBloc() : super(FactState()) {
    on<FetchFacts>((event, emit) async {
      emit(state.copyWith(facts: state.facts.copyWith(loading: event.useLoader)));
      List<Fact> facts = await FactService.getFacts();
      emit(state.copyWith(facts: DataList(facts, loading: false, initialFetchComplete: true)));
    });
  }
}
