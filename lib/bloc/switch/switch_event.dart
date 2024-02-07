import 'package:equatable/equatable.dart';

abstract class SwitchEvents extends Equatable {
  @override
  List<Object> get props => [];
}

class EnableorDisableNotification extends SwitchEvents {}

// class DisableNotification extends SwitchEvents {}
