// ignore_for_file: must_be_immutable

part of 'srkr_profile_bloc.dart';

class SrkrProfileState extends Equatable {
  SrkrProfileState({this.srkrProfileModelObj});

  SrkrProfileModel? srkrProfileModelObj;

  @override
  List<Object?> get props => [
        srkrProfileModelObj,
      ];
  SrkrProfileState copyWith({SrkrProfileModel? srkrProfileModelObj}) {
    return SrkrProfileState(
      srkrProfileModelObj: srkrProfileModelObj ?? this.srkrProfileModelObj,
    );
  }
}
