import 'package:bloc/bloc.dart';
import 'package:bloc_app/bloc/slider/slider_event.dart';
import 'package:bloc_app/bloc/slider/slider_states.dart';

class SliderBloc extends Bloc<SliderEvents, SliderStates> {
  SliderBloc() : super(SliderStates()) {
    on<SlidetheSliderEvents>(_onSlidetheSliderEvents);
  }

  void _onSlidetheSliderEvents(
      SlidetheSliderEvents events, Emitter<SliderStates> emitter) {
    emitter(state.copyWith(newVal: events.slider));
  }
}
