// ignore_for_file: must_be_immutable

part of 'under_progress_bloc.dart';

@immutable
abstract class UnderProgressEvent extends Equatable {}

class UnderProgressInitialEvent extends UnderProgressEvent {
  @override
  List<Object?> get props => [];
}
