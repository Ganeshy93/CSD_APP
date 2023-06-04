// ignore_for_file: must_be_immutable

part of 'student_profile_bloc.dart';

@immutable
abstract class StudentProfileEvent extends Equatable {}

class StudentProfileInitialEvent extends StudentProfileEvent {
  @override
  List<Object?> get props => [];
}
