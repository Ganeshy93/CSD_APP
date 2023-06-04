// ignore_for_file: must_be_immutable

part of 'frame_3607_bloc.dart';

class Frame3607State extends Equatable {
  Frame3607State({this.frame3607ModelObj});

  Frame3607Model? frame3607ModelObj;

  @override
  List<Object?> get props => [
        frame3607ModelObj,
      ];
  Frame3607State copyWith({Frame3607Model? frame3607ModelObj}) {
    return Frame3607State(
      frame3607ModelObj: frame3607ModelObj ?? this.frame3607ModelObj,
    );
  }
}
