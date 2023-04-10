part of 'global_bloc.dart';

abstract class GlobalEvent extends Equatable {
  const GlobalEvent();
}

class SetLoading extends GlobalEvent {
  final bool loading;

  const SetLoading(this.loading);

  @override
  List<Object?> get props => [loading];
}

class SetLocale extends GlobalEvent {
  final String locale;

  const SetLocale(this.locale);

  @override
  List<Object?> get props => [locale];
}

class SetTheme extends GlobalEvent {
  final String theme;

  const SetTheme(this.theme);

  @override
  List<Object?> get props => [theme];
}
