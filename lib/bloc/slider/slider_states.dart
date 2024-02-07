import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class SliderStates extends Equatable {
  double val;

  SliderStates({this.val = 0.0});

  SliderStates copyWith({double? newVal}) {
    return SliderStates(
      val: newVal ?? val,
    );
  }

  @override
  List<Object> get props => [val];
}
