// ignore_for_file: must_be_immutable

part of 'group_chart_bloc.dart';

class GroupChartState extends Equatable {
  GroupChartState({this.groupChartModelObj});

  GroupChartModel? groupChartModelObj;

  @override
  List<Object?> get props => [
        groupChartModelObj,
      ];
  GroupChartState copyWith({GroupChartModel? groupChartModelObj}) {
    return GroupChartState(
      groupChartModelObj: groupChartModelObj ?? this.groupChartModelObj,
    );
  }
}
