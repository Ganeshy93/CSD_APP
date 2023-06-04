// ignore_for_file: must_be_immutable

part of 'group_chart_bloc.dart';

@immutable
abstract class GroupChartEvent extends Equatable {}

class GroupChartInitialEvent extends GroupChartEvent {
  @override
  List<Object?> get props => [];
}
