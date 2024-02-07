import 'package:equatable/equatable.dart';

class Counterstate extends Equatable {
  final int counter;
  const Counterstate({this.counter = 0});
  Counterstate copyWith({int? counter}) {
    return Counterstate(
      counter: counter ?? this.counter,
    );
  }

  @override
  List<Object> get props => [counter];
}
