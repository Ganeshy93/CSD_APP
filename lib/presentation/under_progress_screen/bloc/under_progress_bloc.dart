import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:csd_flutter_application/presentation/under_progress_screen/models/under_progress_model.dart';
part 'under_progress_event.dart';
part 'under_progress_state.dart';

class UnderProgressBloc extends Bloc<UnderProgressEvent, UnderProgressState> {
  UnderProgressBloc(UnderProgressState initialState) : super(initialState) {
    on<UnderProgressInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UnderProgressInitialEvent event,
    Emitter<UnderProgressState> emit,
  ) async {}
}
