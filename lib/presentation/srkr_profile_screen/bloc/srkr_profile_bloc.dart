import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/srkr_profile_item_model.dart';
import 'package:csd_flutter_application/presentation/srkr_profile_screen/models/srkr_profile_model.dart';
part 'srkr_profile_event.dart';
part 'srkr_profile_state.dart';

class SrkrProfileBloc extends Bloc<SrkrProfileEvent, SrkrProfileState> {
  SrkrProfileBloc(SrkrProfileState initialState) : super(initialState) {
    on<SrkrProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SrkrProfileInitialEvent event,
    Emitter<SrkrProfileState> emit,
  ) async {
    emit(state.copyWith(
        srkrProfileModelObj: state.srkrProfileModelObj
            ?.copyWith(srkrProfileItemList: fillSrkrProfileItemList())));
  }

  List<SrkrProfileItemModel> fillSrkrProfileItemList() {
    return List.generate(6, (index) => SrkrProfileItemModel());
  }
}
