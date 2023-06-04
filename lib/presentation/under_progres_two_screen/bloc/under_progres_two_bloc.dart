import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:csd_flutter_application/presentation/under_progres_two_screen/models/under_progres_two_model.dart';
part 'under_progres_two_event.dart';
part 'under_progres_two_state.dart';

class UnderProgresTwoBloc
    extends Bloc<UnderProgresTwoEvent, UnderProgresTwoState> {
  UnderProgresTwoBloc(UnderProgresTwoState initialState) : super(initialState) {
    on<UnderProgresTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UnderProgresTwoInitialEvent event,
    Emitter<UnderProgresTwoState> emit,
  ) async {}
}
