part of 'global_bloc.dart';

class GlobalState extends Equatable {
  final bool loading;
  final String locale;
  final String theme;

  const GlobalState({this.loading = false, this.locale = "en", this.theme = "light"});

  GlobalState copyWith({bool? loading, String? locale, String? theme}) => GlobalState(
        loading: loading ?? this.loading,
        locale: locale ?? this.locale,
        theme: theme ?? this.theme,
      );

  @override
  List<Object> get props => [loading, locale, theme];
}
