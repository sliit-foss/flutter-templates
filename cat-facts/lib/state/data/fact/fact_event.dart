part of 'fact_bloc.dart';

abstract class FactEvent extends Equatable {
  const FactEvent();

  @override
  List<Object?> get props => [];
}

class FetchFacts extends FactEvent with DataFetchEvent {
  FetchFacts({bool? useLoader}) {
    this.useLoader = useLoader ?? true;
  }
}
