import 'package:bloc/bloc.dart';
import 'package:bloc_app/bloc/switch/switch_event.dart';
import 'package:bloc_app/bloc/switch/switch_states.dart';

class SwitchBloc extends Bloc<SwitchEvents, SwitchStates> {
  //super lay chai inital maw kun state huncha define garcha
  SwitchBloc() : super(SwitchStates()) {
    on<EnableorDisableNotification>(_enableorDisableNotification);
  }

  void _enableorDisableNotification(
      EnableorDisableNotification events, Emitter<SwitchStates> emitter) {
    emitter(state.copyWith(isSwitch: !state.isSwitch));
  }
}
