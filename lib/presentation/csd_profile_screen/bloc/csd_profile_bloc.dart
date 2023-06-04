import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/csd_profile_item_model.dart';
import 'package:csd_flutter_application/presentation/csd_profile_screen/models/csd_profile_model.dart';
part 'csd_profile_event.dart';
part 'csd_profile_state.dart';

class CsdProfileBloc extends Bloc<CsdProfileEvent, CsdProfileState> {
  CsdProfileBloc(CsdProfileState initialState) : super(initialState) {
    on<CsdProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CsdProfileInitialEvent event,
    Emitter<CsdProfileState> emit,
  ) async {
    emit(state.copyWith(
        csdProfileModelObj: state.csdProfileModelObj
            ?.copyWith(csdProfileItemList: fillCsdProfileItemList())));
  }

  List<CsdProfileItemModel> fillCsdProfileItemList() {
    return List.generate(2, (index) => CsdProfileItemModel());
  }
}
