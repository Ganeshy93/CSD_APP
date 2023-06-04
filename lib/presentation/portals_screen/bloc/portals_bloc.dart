import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/portals_item_model.dart';
import 'package:csd_flutter_application/presentation/portals_screen/models/portals_model.dart';
part 'portals_event.dart';
part 'portals_state.dart';

class PortalsBloc extends Bloc<PortalsEvent, PortalsState> {
  PortalsBloc(PortalsState initialState) : super(initialState) {
    on<PortalsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PortalsInitialEvent event,
    Emitter<PortalsState> emit,
  ) async {
    emit(state.copyWith(
        portalsModelObj: state.portalsModelObj
            ?.copyWith(portalsItemList: fillPortalsItemList())));
  }

  List<PortalsItemModel> fillPortalsItemList() {
    return List.generate(6, (index) => PortalsItemModel());
  }
}
