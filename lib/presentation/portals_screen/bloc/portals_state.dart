// ignore_for_file: must_be_immutable

part of 'portals_bloc.dart';

class PortalsState extends Equatable {
  PortalsState({this.portalsModelObj});

  PortalsModel? portalsModelObj;

  @override
  List<Object?> get props => [
        portalsModelObj,
      ];
  PortalsState copyWith({PortalsModel? portalsModelObj}) {
    return PortalsState(
      portalsModelObj: portalsModelObj ?? this.portalsModelObj,
    );
  }
}
