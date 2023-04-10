import 'package:equatable/equatable.dart';

class DataFetchEvent {
  late final bool useLoader;
}

class DataObject<T> extends Equatable {
  late final bool loading;
  late final T data;

  DataObject<T> copyWith({bool? loading, T? data}) => DataObject<T>(
        data ?? this.data,
        loading: loading ?? this.loading,
      );

  DataObject(this.data, {this.loading = true});

  @override
  List<Object?> get props => [loading, data];
}

class DataList<T> extends Equatable {
  late final bool loading;
  late final List<T> data;

  DataList<T> copyWith({bool? loading, List<T>? data}) => DataList<T>(
        data ?? this.data,
        loading: loading ?? this.loading,
      );

  DataList(this.data, {this.loading = true});

  @override
  List<Object?> get props => [loading, data];
}
