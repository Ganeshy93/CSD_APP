import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:csd_flutter_application/presentation/group_chart_screen/models/group_chart_model.dart';
part 'group_chart_event.dart';
part 'group_chart_state.dart';

class GroupChartBloc extends Bloc<GroupChartEvent, GroupChartState> {
  GroupChartBloc(GroupChartState initialState) : super(initialState) {
    on<GroupChartInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GroupChartInitialEvent event,
    Emitter<GroupChartState> emit,
  ) async {}
}
