import 'package:equatable/equatable.dart';

abstract class SliderEvents extends Equatable {
  const SliderEvents();
  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class SlidetheSliderEvents extends SliderEvents {
  double slider;
  SlidetheSliderEvents({required this.slider});
  @override
  List<Object> get props => [slider];
}
