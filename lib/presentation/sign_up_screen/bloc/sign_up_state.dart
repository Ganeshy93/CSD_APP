// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  SignUpState({
    this.grouptwentysixController,
    this.signUpModelObj,
  });

  TextEditingController? grouptwentysixController;

  SignUpModel? signUpModelObj;

  @override
  List<Object?> get props => [
        grouptwentysixController,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? grouptwentysixController,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      grouptwentysixController:
          grouptwentysixController ?? this.grouptwentysixController,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
