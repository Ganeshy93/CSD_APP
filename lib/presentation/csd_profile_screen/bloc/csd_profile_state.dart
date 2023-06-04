// ignore_for_file: must_be_immutable

part of 'csd_profile_bloc.dart';

class CsdProfileState extends Equatable {
  CsdProfileState({this.csdProfileModelObj});

  CsdProfileModel? csdProfileModelObj;

  @override
  List<Object?> get props => [
        csdProfileModelObj,
      ];
  CsdProfileState copyWith({CsdProfileModel? csdProfileModelObj}) {
    return CsdProfileState(
      csdProfileModelObj: csdProfileModelObj ?? this.csdProfileModelObj,
    );
  }
}
