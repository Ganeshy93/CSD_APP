// ignore_for_file: must_be_immutable

part of 'student_profile_bloc.dart';

class StudentProfileState extends Equatable {
  StudentProfileState({this.studentProfileModelObj});

  StudentProfileModel? studentProfileModelObj;

  @override
  List<Object?> get props => [
        studentProfileModelObj,
      ];
  StudentProfileState copyWith({StudentProfileModel? studentProfileModelObj}) {
    return StudentProfileState(
      studentProfileModelObj:
          studentProfileModelObj ?? this.studentProfileModelObj,
    );
  }
}
