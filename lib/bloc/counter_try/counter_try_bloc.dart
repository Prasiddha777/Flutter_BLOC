import 'package:bloc/bloc.dart';
import 'package:bloc_app/bloc/counter_try/counter_try_states.dart';
import 'package:bloc_app/counter/bloc/counter_event.dart';

class CounterTryBloc extends Bloc<CounterEvent, Counterstate> {
  CounterTryBloc() : super(Counterstate()) {
    on<IncrementCounter>(incrementCounter);
    on<DecrementCounter>(decrementCounter);
  }

  void incrementCounter(IncrementCounter event, Emitter<Counterstate> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void decrementCounter(DecrementCounter event, Emitter<Counterstate> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
