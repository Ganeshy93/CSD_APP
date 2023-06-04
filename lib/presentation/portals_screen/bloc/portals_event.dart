// ignore_for_file: must_be_immutable

part of 'portals_bloc.dart';

@immutable
abstract class PortalsEvent extends Equatable {}

class PortalsInitialEvent extends PortalsEvent {
  @override
  List<Object?> get props => [];
}
