// ignore_for_file: must_be_immutable

part of 'under_progres_two_bloc.dart';

class UnderProgresTwoState extends Equatable {
  UnderProgresTwoState({this.underProgresTwoModelObj});

  UnderProgresTwoModel? underProgresTwoModelObj;

  @override
  List<Object?> get props => [
        underProgresTwoModelObj,
      ];
  UnderProgresTwoState copyWith(
      {UnderProgresTwoModel? underProgresTwoModelObj}) {
    return UnderProgresTwoState(
      underProgresTwoModelObj:
          underProgresTwoModelObj ?? this.underProgresTwoModelObj,
    );
  }
}
