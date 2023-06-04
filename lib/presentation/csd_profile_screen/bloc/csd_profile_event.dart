// ignore_for_file: must_be_immutable

part of 'csd_profile_bloc.dart';

@immutable
abstract class CsdProfileEvent extends Equatable {}

class CsdProfileInitialEvent extends CsdProfileEvent {
  @override
  List<Object?> get props => [];
}
