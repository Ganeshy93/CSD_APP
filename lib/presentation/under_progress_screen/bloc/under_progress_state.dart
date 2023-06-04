// ignore_for_file: must_be_immutable

part of 'under_progress_bloc.dart';

class UnderProgressState extends Equatable {
  UnderProgressState({this.underProgressModelObj});

  UnderProgressModel? underProgressModelObj;

  @override
  List<Object?> get props => [
        underProgressModelObj,
      ];
  UnderProgressState copyWith({UnderProgressModel? underProgressModelObj}) {
    return UnderProgressState(
      underProgressModelObj:
          underProgressModelObj ?? this.underProgressModelObj,
    );
  }
}
