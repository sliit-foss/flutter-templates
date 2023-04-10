import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'global_event.dart';
part 'global_state.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  GlobalBloc() : super(const GlobalState()) {
    on<SetLoading>((event, emit) {
      emit(state.copyWith(loading: event.loading));
    });
    on<SetLocale>((event, emit) {
      emit(state.copyWith(locale: event.locale));
    });
    on<SetTheme>((event, emit) {
      emit(state.copyWith(theme: event.theme));
    });
  }
}