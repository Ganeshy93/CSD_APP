import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:csd_flutter_application/presentation/frame_3607_screen/models/frame_3607_model.dart';
part 'frame_3607_event.dart';
part 'frame_3607_state.dart';

class Frame3607Bloc extends Bloc<Frame3607Event, Frame3607State> {
  Frame3607Bloc(Frame3607State initialState) : super(initialState) {
    on<Frame3607InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame3607InitialEvent event,
    Emitter<Frame3607State> emit,
  ) async {}
}
