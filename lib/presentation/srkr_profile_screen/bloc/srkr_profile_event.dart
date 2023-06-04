// ignore_for_file: must_be_immutable

part of 'srkr_profile_bloc.dart';

@immutable
abstract class SrkrProfileEvent extends Equatable {}

class SrkrProfileInitialEvent extends SrkrProfileEvent {
  @override
  List<Object?> get props => [];
}
