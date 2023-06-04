import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:csd_flutter_application/presentation/events_screen/models/events_model.dart';
part 'events_event.dart';
part 'events_state.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  EventsBloc(EventsState initialState) : super(initialState) {
    on<EventsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EventsInitialEvent event,
    Emitter<EventsState> emit,
  ) async {}
}
