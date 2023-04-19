import 'package:equatable/equatable.dart';

class DataFetchEvent {
  late final bool useLoader;
}

class DataObject<T> extends Equatable {
  late final bool loading;
  late final bool initialFetchComplete;
  late final T data;

  DataObject<T> copyWith({bool? loading, bool? initialFetchComplete, T? data}) => DataObject<T>(
    data ?? this.data,
    loading: loading ?? this.loading,
    initialFetchComplete: initialFetchComplete ?? this.initialFetchComplete,
  );

  DataObject(this.data, {this.loading = true, this.initialFetchComplete = false});

  @override
  List<Object?> get props => [loading, initialFetchComplete, data];
}

class DataList<T> extends Equatable {
  late final bool loading;
  late final bool initialFetchComplete;
  late final List<T> data;

  DataList<T> copyWith({bool? loading, bool? initialFetchComplete, List<T>? data}) => DataList<T>(
    data ?? this.data,
    loading: loading ?? this.loading,
    initialFetchComplete: initialFetchComplete ?? this.initialFetchComplete,
  );

  DataList(this.data, {this.loading = true, this.initialFetchComplete = false});

  @override
  List<Object?> get props => [loading, initialFetchComplete, data];
}
